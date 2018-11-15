//===- LoopUnroll.cpp - Loop unroller pass --------------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//===----------------------------------------------------------------------===//

#include "llvm/Transforms/Scalar/LoopUnrollPass.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/DenseMapInfo.h"
#include "llvm/ADT/DenseSet.h"
#include "llvm/ADT/None.h"
#include "llvm/ADT/Optional.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/CodeMetrics.h"
#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopUnrollAnalyzer.h"
#include "llvm/Analysis/OptimizationRemarkEmitter.h"
#include "llvm/Analysis/ProfileSummaryInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/DiagnosticInfo.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Scalar/LoopPassManager.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Transforms/Utils/LoopSimplify.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/Utils/UnrollLoop.h"
#include "llvm/Transforms/Vectorize/LoopPreVec.h"
#include <algorithm>
#include <cassert>
#include <cstdint>
#include <limits>
#include <string>
#include <tuple>
#include <utility>

using namespace llvm;

#define DEBUG_TYPE "loop-prevec"


void LoopPreVecPass::printLoop(){

  //loop preheader
  auto preHeader = L->getLoopPreheader();   
  if(preHeader){
    dbgs() << "-----preheader-----\n";
    dbgs() << *preHeader << "\n";
  }

  //loop header
  auto header = L->getHeader();   
  if(header){
    dbgs() << "-----header-----\n";
    dbgs() << *header << "\n";
  }
  
  //loop latch
  auto latch = L->getLoopLatch();   
  if(latch){
    dbgs() << "-----latch-----\n";
    dbgs() << *latch << "\n";
  }

  //loop exit
  auto exit = L->getExitBlock();   
  if(exit){
    dbgs() << "-----exit-----\n";
    dbgs() << *exit << "\n";
  }
  
}

namespace llvm{

  class Reduction{
  

    public:

    Reduction(PHINode * p, RecurrenceDescriptor rd){
      phi = p;
      reductionDesc = rd;
    }
    
    PHINode * phi;
    RecurrenceDescriptor reductionDesc;
    SmallVector<Instruction*, 32> reductionChain;

    void splitReductionNodes();
    void createReductionChain();
    void printReductionChain();
    Value* getIdentityVector();

  };
};


Value* Reduction::getIdentityVector(){

  Instruction *firstRed = reductionChain[0];

  Type *ty = firstRed->getType();

  Value * ret = nullptr;

  switch(reductionDesc.getRecurrenceKind()){
    
  case RecurrenceDescriptor::RK_IntegerAdd:
    ret = Constant::getIntegerValue(ty, APInt(ty->getScalarSizeInBits(),0,true));
    break;
    
  case RecurrenceDescriptor::RK_IntegerMinMax:
    if(reductionDesc.getMinMaxRecurrenceKind() == RecurrenceDescriptor::MRK_UIntMin){
      ret = Constant::getIntegerValue(ty, APInt(ty->getScalarSizeInBits(),-1,true));
    }
    else if(reductionDesc.getMinMaxRecurrenceKind() == RecurrenceDescriptor::MRK_UIntMax){
      ret = Constant::getIntegerValue(ty, APInt(ty->getScalarSizeInBits(),0,true));
    }
    break;

  default:
    break;

  }

  return ret;


}

void Reduction::createReductionChain(){

  Instruction * I = phi;
  BasicBlock * ParentBB = phi->getParent();


  while(true){
    
    for(User *U : I->users()){
      
      if(!isa<Instruction>(U)) continue;

      Instruction *UI = dyn_cast<Instruction>(U);

      if(UI->getType() == reductionDesc.getRecurrenceType() && UI->getParent() == ParentBB){
	I = UI;
	reductionChain.push_back(I);
	break;
      }
    }

    if(I == reductionDesc.getLoopExitInstr())
      break;
  
  }


}


void Reduction::printReductionChain(){

  dbgs() << *reductionDesc.getRecurrenceType() << "\n";
  dbgs() << "[";
  for(unsigned i = 0; i < reductionChain.size(); i++){
    dbgs() << *reductionChain[i] << "\n";
  }
  dbgs() << "]\n";

}


void Reduction::splitReductionNodes(){

  if(reductionChain.size() < 2) return;

  Value * retIdentity = getIdentityVector();

  if(!retIdentity) return;

  LLVM_DEBUG(dbgs() << "identity : " << *retIdentity << "\n");

  LLVM_DEBUG(dbgs() << "-----before change----\n";
	     dbgs() << *phi->getParent() << "\n";);

  BasicBlock *curBB = phi->getParent();

  IRBuilder<> Builder(curBB);
  Builder.SetInsertPoint(phi);

  //exactly two values coming for the phi node
  assert(phi->getNumIncomingValues() == 2);

  Value * outsideValue;
  BasicBlock * outsideBB;

  for(unsigned i = 0; i < phi->getNumIncomingValues(); i++){
    BasicBlock * IBB = phi->getIncomingBlock(i);
    if(IBB != curBB){
      outsideBB = IBB;
      outsideValue = phi->getIncomingValueForBlock(IBB);
    }
    else{
      assert(phi->getIncomingValueForBlock(IBB) == reductionDesc.getLoopExitInstr());
    }

  }

  //create PHINodes for each node
  RecurrenceDescriptor::RecurrenceKind RK = reductionDesc.getRecurrenceKind();
  

  bool minMax = false;
  ICmpInst::Predicate p;

  if(reductionDesc.isIntegerRecurrenceKind(RK)){
    
    for(unsigned i = 0; i < reductionChain.size(); i++){
      
      Instruction * I = reductionChain[i];
      PHINode * newPhi = Builder.CreatePHI(phi->getType(), phi->getNumIncomingValues());      
      newPhi->addIncoming(retIdentity, outsideBB);
      newPhi->addIncoming(I, curBB);

      //replace definitions
      if(i == 0){
	I->replaceUsesOfWith(phi,newPhi);
      }
      else{
	I->replaceUsesOfWith(reductionChain[i-1],newPhi);
      }

      //if it is a select statement
      if(SelectInst * SI = dyn_cast<SelectInst>(I)){
	minMax = true;
	
	//get the compare instruction
	ICmpInst * ICmp = dyn_cast<ICmpInst>(SI->getCondition());
	if(ICmp){
	  p = ICmp->getPredicate();
	  if(i == 0){
	    ICmp->replaceUsesOfWith(phi,newPhi);
	  }
	  else{
	    ICmp->replaceUsesOfWith(reductionChain[i-1],newPhi);
	  }
	}
      }
   
    }


    LLVM_DEBUG(dbgs() << "use empty: " << phi->use_empty() << "\n";);

    //create a phi node for the original incoming value
    PHINode * originalIncoming = Builder.CreatePHI(phi->getType(), 1);
    originalIncoming->addIncoming(outsideValue, outsideBB);

    //remove the phi instruction
    if(phi->use_empty()){
      phi->eraseFromParent();
    }

    LLVM_DEBUG(dbgs() << "---------after change-------\n";
	       dbgs() << *curBB << "\n";);

    //now do the reduction
    for(User *U : reductionDesc.getLoopExitInstr()->users()){
      Instruction * I = dyn_cast<Instruction>(U);
      if(I && I->getParent() != curBB){

	BasicBlock * outsideParent = I->getParent();	
	Instruction * insert = &*outsideParent->begin();
	Builder.SetInsertPoint(insert);

	LLVM_DEBUG(dbgs() << "-------before outside------\n";
		   dbgs() << *outsideParent << "\n";);


	
	//create a set of PHI's and then reduce
	SmallVector<Value*, 16> phis;

	//create a phinode for the initial value
	PHINode * init = Builder.CreatePHI(originalIncoming->getType(),2);
	init->addIncoming(originalIncoming, curBB);
	init->addIncoming(outsideValue, outsideBB);
	
	phis.push_back(init);
	
	for(unsigned i=0; i < reductionChain.size(); i++){
	  PHINode * preRed = Builder.CreatePHI(reductionChain[i]->getType(),1);
	  preRed->addIncoming(reductionChain[i],curBB);
	  phis.push_back(preRed);
	}

	
	Value * first = phis[0];
	Value * second = phis[1];

	Builder.SetInsertPoint(outsideParent->getFirstNonPHI());

	Value * output;
	if(!minMax)
	  output = Builder.CreateBinOp(static_cast<Instruction::BinaryOps>(reductionDesc.getRecurrenceBinOp(RK)), first, second);
	if(minMax){
	  output = Builder.CreateICmp(p, first, second);
	  output = Builder.CreateSelect(output, first, second);
	}
	for(unsigned i = 2; i < phis.size(); i++){
	  if(!minMax)
	    output = Builder.CreateBinOp(static_cast<Instruction::BinaryOps>(reductionDesc.getRecurrenceBinOp(RK)), output, phis[i]);
	  if(minMax){
	    Value * cmp = Builder.CreateICmp(p, output, phis[i]);
	    output = Builder.CreateSelect(cmp, output, phis[i]);
	  }
	}
	
	I->replaceAllUsesWith(output);
	I->eraseFromParent();

	LLVM_DEBUG(dbgs() << "-------after outside------\n";
		   dbgs() << *outsideParent << "\n";);
	break;

      }
    }

  }



}


bool LoopPreVecPass::identifyReductionPHI(){

  auto blocks = L->getBlocksVector();

  SmallVector<Reduction* , 4> reductions;

  for(auto it = blocks.begin(); it != blocks.end(); it++){
  
    BasicBlock * BB = *it;

    for(Instruction &I: *BB){
      if(PHINode * phi = dyn_cast<PHINode>(&I)){
	RecurrenceDescriptor RedDes;
	if(RecurrenceDescriptor::isReductionPHI(phi, L, RedDes, nullptr, AC, DT) && isa<VectorType>(phi->getType())){
	  reductions.push_back(new Reduction(phi, RedDes));
	}
      } 
    }    
  }

  bool Changed = reductions.size() > 0;
  

  for(unsigned i = 0; i < reductions.size(); i++){
    reductions[i]->createReductionChain();
    LLVM_DEBUG(reductions[i]->printReductionChain(););
    reductions[i]->splitReductionNodes();
    delete reductions[i];
  }

  return Changed;
  

}
  

bool LoopPreVecPass::runImpl(Loop * L_, ScalarEvolution *SE_, TargetTransformInfo *TTI_,
			     LoopInfo *LI_ , DominatorTree *DT_, AssumptionCache *AC_){


  L = L_;
  SE = SE_;
  TTI = TTI_;
  LI = LI_;
  DT = DT_;
  AC = AC_;

  bool Changed = false;

  bool isSimple = L->isLoopSimplifyForm();
  bool isLCSSA = L->isLCSSAForm(*DT);
  
  auto innerLoops = L->getSubLoops();

  LLVM_DEBUG(dbgs() << "start loop prevec\n";);

  if(innerLoops.size() == 0){
    LLVM_DEBUG(dbgs() << "found inner loop - " << L->getName() << " " << isSimple << " " << isLCSSA << "\n";);
    //L->print(dbgs(), 0, true);
    Changed = identifyReductionPHI();
  }


  LLVM_DEBUG(dbgs() << "end loop prevec\n";);
  
  return Changed;

}


namespace {

class LoopPreVec : public LoopPass {
public:
  static char ID; // Pass ID, replacement for typeid

  LoopPreVecPass LPass;

  LoopPreVec()
      : LoopPass(ID) {
    initializeLoopPreVecPass(*PassRegistry::getPassRegistry());
  }

  bool runOnLoop(Loop *L, LPPassManager &LPM) override {
    if (skipLoop(L))
      return false;

    Function &F = *L->getHeader()->getParent();

    auto &DT = getAnalysis<DominatorTreeWrapperPass>().getDomTree();
    LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
    ScalarEvolution &SE = getAnalysis<ScalarEvolutionWrapperPass>().getSE();
    TargetTransformInfo &TTI =
        getAnalysis<TargetTransformInfoWrapperPass>().getTTI(F);
    auto &AC = getAnalysis<AssumptionCacheTracker>().getAssumptionCache(F);
    //bool PreserveLCSSA = mustPreserveAnalysisID(LCSSAID);

    return LPass.runImpl(L, &SE, &TTI, &LI, &DT, &AC);
    
  }

  /// This transformation requires natural loop information & requires that
  /// loop preheaders be inserted into the CFG...
  void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.addRequired<AssumptionCacheTracker>();
    AU.addRequired<TargetTransformInfoWrapperPass>();
    // FIXME: Loop passes are required to preserve domtree, and for now we just
    // recreate dom info if anything gets unrolled.
    getLoopAnalysisUsage(AU);
  }

private:
  
  void printLoop(Loop * L);


};

} // end anonymous namespace

char LoopPreVec::ID = 0;

INITIALIZE_PASS_BEGIN(LoopPreVec, "loop-prevec", "loop prevec", false, false)
INITIALIZE_PASS_DEPENDENCY(AssumptionCacheTracker)
INITIALIZE_PASS_DEPENDENCY(LoopPass)
INITIALIZE_PASS_DEPENDENCY(TargetTransformInfoWrapperPass)
INITIALIZE_PASS_END(LoopPreVec, "loop-prevec", "loop prevec", false, false)

Pass *llvm::createLoopPreVecPass(){
  return new LoopPreVec();
}
