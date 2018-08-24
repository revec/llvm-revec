//===- SLPVectorizer.cpp - A bottom up SLP Vectorizer ---------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
// This pass implements the Bottom Up SLP vectorizer. It detects consecutive
// stores that can be put together into vector-stores. Next, it attempts to
// construct vectorizable tree using the use-def chains. If a profitable tree
// was found, the SLP vectorizer performs vectorization on the tree.
//
// The pass is inspired by the work described in the paper:
//  "Loop-Aware SLP in GCC" by Ira Rosen, Dorit Nuzman, Ayal Zaks.
//
//===----------------------------------------------------------------------===//
#include "llvm/Analysis/RevecUnrollAnalysis.h"
#include "llvm/ADT/Optional.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/CodeMetrics.h"
#include "llvm/Analysis/GlobalsModRef.h"
#include "llvm/Analysis/LoopAccessAnalysis.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"
#include "llvm/Analysis/ValueTracking.h"
#include "llvm/Analysis/VectorUtils.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/NoFolder.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"
#include <algorithm>
#include <memory>

#define CHDEBUG(X) LLVM_DEBUG(X)

using namespace llvm;

#define SV_NAME "revec-unroll"
#define DEBUG_TYPE "revec-unroll"

//my command line options
static cl::opt<bool> TurnRevecUnrollOff(
	"no-revec-unroll", cl::init(false), cl::Hidden,
	cl::desc("turns off revec unroll analysis"));


namespace llvm{

	class RevecLoopAnalysis{

		/*
		algorithm for finding the loop unroll count for loops with vector instructions

		Input - the maximum vector length of the machine
		Output - for each loop how many times it needs to be unrolled

		find the innermost loops
		check whether they have vector instructions
		If so, get the main body BBs
		for each of these BBs
		get the seed instructions (extractelement or vector store instructions)
		see any mergable instructions -> merge up to the maximum allowable
		build trees for these bundles
		check whether there are any overlaps in these trees
		retain the canonical trees
		Now calculate the bottleneck width -> loop unroll factor = lcm(bottleneck_width (only utilized width should be considered), max_vector_width)
		Unroll the loop / change the unroll pass to use this information to perform unrolling
		*/

		/*

		What about unrolling the outer loop to allow expanding the inner loop's vector width?
		Data parallel computation. Internal reductions vs data parallel computations visible
		outside the basic block.

		Now for each bb we can build a tree for the vector instructions from bottom up
		This need not start from a store, only should start from a vector operand assignment.
		Tree building should stop as soon as scalar code is used to populate vector operands.

		Merging trees
		-------------
		Also, we need to merge already unrolled paths if existing. In LLVM IR, you can always
		merge two vector operands into one using the instructions
		extractelement and insertelement combinations. So only need to check the isomorphism
		of instructions. But, in implementation this combo should only be used in the leaves
		of the tree with vector instructions.

		Cost of merging
		---------------
		Cost of instructions - at the leaves of the tree there should be loads or insertelements
		Follow the operand chain to find out how expensive merging will be.

		This is going to be a lightweight routine that will only say that the unrolling factor will
		be this, but will not go into actual scheduling. As the long as the unroll factor is not
		that big, it won't do harm to unroll.

		-> changing collectSeedInstructions to seed to the last vector operations
		-> change the called functions from then on

		*/

	public:
		#define MAX_LOOPS	10
		typedef SmallVector<Loop *, MAX_LOOPS> LoopVector;
		typedef SmallVector<BasicBlock *, 10> BasicVector;
		typedef DenseMap<Loop *, BasicVector> LoopMap;

		/* this function returns the basic blocks that we can revectorize
		inside loops; next we need to build a tree and see if we can increase
		the vector width, if so how much of the loop should we unroll; we also need to merge
		within the basic block if possible.
		*/
		void getCandidateBasicBlocks(Function &F, LoopInfo * LI, raw_ostream &os);
		
	private:
		LoopMap loop_map;
		LoopVector getInnerLoops_rec(Loop * l);
		LoopVector getInnerLoops(Function &F, LoopInfo * LI, raw_ostream &os);

		/* printing routines */
		void printDebugInformation(Instruction &I, raw_ostream &os);

	public:
		void printLoops(Function &F, LoopInfo * LI, raw_ostream &os);
		void printHasVector(Function &F, LoopInfo * LI, raw_ostream &os);
	        LoopMap getLoopMap(){ return loop_map;}
	};
}


static bool isAVecIns(Instruction * I){
  if(I->getType()->isVectorTy()){
    return true;
  }
  else{
    if(StoreInst * st = dyn_cast<StoreInst>(I)){
      return st->getValueOperand()->getType()->isVectorTy();
    }
    return false;
  }
}

/* this function returns the basic blocks that we can revectorize
inside loops; next we need to build a tree and see if we can increase
the vector width, if so how much of the loop should we unroll; we also need to merge
within the basic block if possible.
*/
void RevecLoopAnalysis::getCandidateBasicBlocks(Function &F, LoopInfo * LI, raw_ostream &os){

	
	LoopVector inner_loops = getInnerLoops(F, LI, os);
	for (auto it = inner_loops.begin(); it != inner_loops.end(); it++){
		Loop * loop = *it;
		BasicVector bbvec;
		for (auto b = loop->block_begin(); b != loop->block_end(); b++){
			BasicBlock * BB = *b;
			for (Instruction &I : *BB){
			  if (isAVecIns(&I)){
				    bbvec.push_back(BB);
				    break;
				}
			}
		}
		if (!bbvec.empty()){
			loop_map[loop] = bbvec;
		}
	}
}

void RevecLoopAnalysis::printDebugInformation(Instruction &I, raw_ostream &os){
	DebugLoc loc = I.getDebugLoc();
	loc.print(os);
	os << "\n";

}

void RevecLoopAnalysis::printLoops(Function &F, LoopInfo * LI, raw_ostream &os){
	os << F.getName() << " : \n";
	for (auto it = LI->begin(); it != LI->end(); it++){
		Loop * l = *it;
		l->print(os);
		if (l->getSubLoops().size() == 0){
			os << " inner loop \n";
		}
		else{
			os << " outer loop \n";
		}

	}
}


void RevecLoopAnalysis::printHasVector(Function &F, LoopInfo * LI, raw_ostream &os){

	bool hasVector = false;
	for (auto it = LI->begin(); it != LI->end(); it++){
		Loop * l = *it;
		//l->dump();
		for (auto blocks = l->block_begin(); blocks != l->block_end(); blocks++){
			BasicBlock * BB = *blocks;
			for (Instruction &I : *BB){
			        if (isAVecIns(&I)){
					os << F.getName() << " : ";
					printDebugInformation(I, os);
					hasVector = true; break;
				}
			}
		}
	}

	if (!hasVector){
		for (auto it = F.begin(); it != F.end(); it++){
			BasicBlock &BB = *it;
			for (Instruction &I : *(&BB)){
			       if (isAVecIns(&I)){
					os << F.getName() << " (g): ";
					printDebugInformation(I, os);
				}
			}
		}
	}
}

RevecLoopAnalysis::LoopVector RevecLoopAnalysis::getInnerLoops_rec(Loop * l){
	LoopVector loops;
	if (l->getSubLoops().size() == 0){
		loops.push_back(l);
	}
	else{
		for (auto sl = l->begin(); sl != l->end(); sl++){
			LoopVector ret = getInnerLoops_rec(*sl);
			loops.insert(loops.end(), ret.begin(), ret.end());
		}
	}
	return loops;
}

RevecLoopAnalysis::LoopVector RevecLoopAnalysis::getInnerLoops(Function &F, LoopInfo * LI, raw_ostream &os){
	LoopVector loops;
	for (auto it = LI->begin(); it != LI->end(); it++){
		LoopVector ret = getInnerLoops_rec(*it);
		loops.insert(loops.end(), ret.begin(), ret.end());
	}

	/* debug printing */
	CHDEBUG(os << "REVAN: inner loops found in " << F.getName() << " : \n");
	CHDEBUG(for (auto it = loops.begin(); it != loops.end(); it++){
		(*it)->print(os);
	});

	return loops;
}


RevecAnalysisPass::RevecAnalysisPass() : FunctionPass(ID) {
    initializeRevectorizerPass(*PassRegistry::getPassRegistry());
}


bool RevecAnalysisPass::doInitialization(Module &M) {
    return false;
}

void RevecAnalysisPass::setUnrollCount(Loop * L, unsigned count){
	UnrollCount[L] = count;
}

bool RevecAnalysisPass::runOnFunction(Function &F){
    if (skipFunction(F))
      return false;

    auto *SE = &getAnalysis<ScalarEvolutionWrapperPass>().getSE();
    auto *TTI = &getAnalysis<TargetTransformInfoWrapperPass>().getTTI(F);
    auto *TLIP = getAnalysisIfAvailable<TargetLibraryInfoWrapperPass>();
    auto *TLI = TLIP ? &TLIP->getTLI() : nullptr;
    auto *AA = &getAnalysis<AAResultsWrapperPass>().getAAResults();
    auto *LI = &getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
    auto *DT = &getAnalysis<DominatorTreeWrapperPass>().getDomTree();
    auto *AC = &getAnalysis<AssumptionCacheTracker>().getAssumptionCache(F);
    auto *DB = &getAnalysis<DemandedBitsWrapperPass>().getDemandedBits();
	
    if (!TurnRevecUnrollOff){
      Impl.runImpl(F, SE, TTI, TLI, AA, LI, DT, AC, DB, this);
    }
    return false;
}

RevecAnalysisPass::LoopMap& RevecAnalysisPass::getUC(){
	return UnrollCount;
}

void RevecAnalysisPass::getAnalysisUsage(AnalysisUsage &AU) const{
    FunctionPass::getAnalysisUsage(AU);
    AU.addRequired<AssumptionCacheTracker>();
    AU.addRequired<ScalarEvolutionWrapperPass>();
    AU.addRequired<AAResultsWrapperPass>();
    AU.addRequired<TargetTransformInfoWrapperPass>();
    AU.addRequired<LoopInfoWrapperPass>();
    AU.addRequired<DominatorTreeWrapperPass>();
    AU.addRequired<DemandedBitsWrapperPass>();
	AU.setPreservesAll();
}



bool RevecAnalysis::runImpl(Function &F, ScalarEvolution *SE_,
			    TargetTransformInfo *TTI_,
			    TargetLibraryInfo *TLI_, AliasAnalysis *AA_,
			    LoopInfo *LI_, DominatorTree *DT_,
			    AssumptionCache *AC_, DemandedBits *DB_, RevecAnalysisPass * Revec) {

  SE = SE_;
  TTI = TTI_;
  TLI = TLI_;
  AA = AA_;
  LI = LI_;
  DT = DT_;
  AC = AC_;
  DB = DB_;
  DL = &F.getParent()->getDataLayout();

  // If the target claims to have no vector registers don't attempt
  // vectorization.
  if (!TTI->getNumberOfRegisters(true))
    return false;

  // Don't vectorize when the attribute NoImplicitFloat is used.
  if (F.hasFnAttribute(Attribute::NoImplicitFloat))
    return false;

  maxWidth = TTI->getRegisterBitWidth(true);

  RevecLoopAnalysis LoopAnalysis;
  LoopAnalysis.getCandidateBasicBlocks(F, LI, dbgs());
  RevecLoopAnalysis::LoopMap map = LoopAnalysis.getLoopMap();
  
  for (auto it = map.begin(); it != map.end(); it++){

	  RevecLoopAnalysis::BasicVector &bbvec = it->second;
	  //CHDEBUG(dbgs() << "processing loop - ");
	  //CHDEBUG(it->first->print(dbgs()));
	  int unrollCount = 1;
	  for (auto bb = bbvec.rbegin(); bb != bbvec.rend(); bb++){

	    //we are only revectorizing store rooted trees
	    collectSeedInstructions(*bb);
	    int unroll = calculateUnrollCount();
	    if (unroll > unrollCount) unrollCount = unroll;
	  }

	  //CHDEBUG(it->first->print(dbgs()));
	  Revec->setUnrollCount(it->first, unrollCount);
	  //CHDEBUG(dbgs() << "REVAN: unrolling the loop by " << unrollCount << "\n");

	  // if(unrollCount > 1){
	  //   CHDEBUG(dbgs() << "REVAN: more than 2 :) " << F.getName() << "\n");
	  //   CHDEBUG(it->first->print(dbgs());
	  //   for(auto bb = it->first->block_begin(); bb != it->first->block_end(); bb++){
	  //     dbgs() << *(*bb) << "\n";
	  //   });
	  // }

  }

  return false;
  
}




void RevecAnalysis::getConsecutiveMemRefs(){

  bundledStores.clear();

  if (vectorSeeds.size() < 2){
    bundledStores.push_back(vectorSeeds);
    return;
  }

	Instruction * I = dyn_cast<Instruction>(vectorSeeds[0]);
	assert( (isa<StoreInst>(I) || isa<LoadInst>(I)) && "this should be a load or a store instruction");


	SetVector<Value *> Heads, Tails;
	SmallDenseMap<Value *, Value *> ConsecutiveChain;

	// Do a quadratic search on all of the given stores and find
	// all of the pairs of stores that follow each other.
	SmallVector<unsigned, 16> IndexQueue;
	for (unsigned i = 0, e = vectorSeeds.size(); i < e; ++i) {
		IndexQueue.clear();
		// If a store has multiple consecutive store candidates, search Stores
		// array according to the sequence: from i+1 to e, then from i-1 to 0.
		// This is because usually pairing with immediate succeeding or preceding
		// candidate create the best chance to find slp vectorization opportunity.
		unsigned j = 0;
		for (j = i + 1; j < e; ++j)
			IndexQueue.push_back(j);
		for (j = i; j > 0; --j)
			IndexQueue.push_back(j - 1);

		for (auto &k : IndexQueue) {
			if (isConsecutiveAccess(vectorSeeds[i], vectorSeeds[k], *DL, *SE)) { //does this return iff store[k] follows store[i]?
				Tails.insert(vectorSeeds[k]);
				Heads.insert(vectorSeeds[i]);
				ConsecutiveChain[vectorSeeds[i]] = vectorSeeds[k];
				break;
			}
		}
	}

	SetVector<Value *> addedConsecutive;
	// For stores that start but don't end a link in the chain:
	for (SetVector<Value *>::iterator it = Heads.begin(), e = Heads.end();
		it != e; ++it) {
	  if (Tails.count(*it)) // Only the start of the chain will have this false. Others will be in both tails and heads.
	    continue;

	  // We found a store instr that starts a chain. Now follow the chain and try
	  // to vectorize it. 
	  ValueList Operands;
	  Value *I = *it;
	  // Collect the chain into a list.
	  while (Tails.count(I) || Heads.count(I)) {
	    Operands.push_back(I);
	    addedConsecutive.insert(I);
			// Move to the next value in the chain.
	    I = ConsecutiveChain[I];
	  }
	  
	  bundledStores.push_back(Operands);   
	  
	}

	for(unsigned i=0; i<vectorSeeds.size(); i++){
	  if(!addedConsecutive.count(vectorSeeds[i])){
	    ValueList V;
	    V.push_back(vectorSeeds[i]);
	    bundledStores.push_back(V);
	  }
	}
}


//this function collects the stores as the seed instructions for SLP - we are only concerned about store
//rooted SLP - we have to collect all stores which are vector instructions, since all stores can lead to 
//separate vectorization trees.
  
void RevecAnalysis::collectSeedInstructions(BasicBlock *BB) {

	//mergeable vector ins. -> add to array
	//single vector ins. -> keep that we have vector instructions and then add the last to array

	vectorSeeds.clear();
	Instruction * last = nullptr;

	for (auto it = BB->rbegin(); it != BB->rend(); it++){
		Instruction &I = *it;
		if(StoreInst * st = dyn_cast<StoreInst>(&I)){
		  if (isAVecIns(&I))
			vectorSeeds.push_back(&I);
		}
	}

	//we collected bottom up - why am I reversing??
	std::reverse(vectorSeeds.begin(), vectorSeeds.end());
	
}


static unsigned gcd(unsigned a, unsigned b){
	if (b == 0)
		return a;
	else
		return gcd(b, a % b);
}


static unsigned lcm(unsigned a, unsigned b){
	return (a * b) / gcd(a, b);
}


typedef SmallVector<const SCEVAddRecExpr *, 8> ScevStore;
typedef SmallVector<ScevStore, 8 > ScevVector;

void printStoreSCEV(Value * V, ScalarEvolution * SE){
  StoreInst * st = dyn_cast<StoreInst>(V);
  const SCEV * scev = SE->getSCEV(st->getPointerOperand());
  scev->print(dbgs());
  dbgs() << " : ";
  scev->getType()->print(dbgs());
  dbgs() << "\n";
}

void printSCEVs(ScevVector &storeSCEVs){

  dbgs() << "printing SCEVs...\n";
  for(unsigned int i=0; i< storeSCEVs.size(); i++){
    ScevStore &S = storeSCEVs[i];
    dbgs() << i << " { \n";
    for(unsigned int j=0; j< S.size(); j++){
      S[j]->print(dbgs());
      dbgs() << "\n";
    }
  }

}

bool checkUnrolled(ScevVector &storeSCEVs, unsigned int mergeAmount){

  bool alreadyUnrolled = true;
  for(unsigned i=0; i<storeSCEVs.size(); i++){
    if(storeSCEVs[i].size() % mergeAmount == 0) continue;
    alreadyUnrolled = false;
    break;
  }
  return alreadyUnrolled;

}

//no backward loops handled - will be handled next time
void extendSCEV(ScevVector &storeSCEVs, const SCEVAddRecExpr * a, unsigned int storeSize, unsigned ptrSize, ScalarEvolution *SE){
       
  const SCEVAddRecExpr * nextExpr = a->getPostIncExpr(*SE);
 
  bool added = false;
  for(unsigned int i=0; i< storeSCEVs.size(); i++){
    ScevStore &S = storeSCEVs[i];
    const SCEV * current = S[S.size() - 1];
    APInt constVal(ptrSize, storeSize / 8); //get the amount of bytes
    const SCEV * addConst = SE->getConstant(constVal);
    const SCEV * addExpr = SE->getAddExpr(addConst, current);
    if(addExpr == nextExpr){
      S.push_back(nextExpr);
      added = true;
      break;
    }
  }

  if(!added){
    ScevStore S;
    S.push_back(nextExpr);
    storeSCEVs.push_back(S);
  }
  
}

void mergeSCEVs(ScevVector &storeSCEVs){

  for(unsigned int i=0; i<storeSCEVs.size(); i++){
    ScevStore &cur = storeSCEVs[i];
    for(unsigned int j=0; j<storeSCEVs.size(); j++){
      if(i==j) continue;
      ScevStore &next = storeSCEVs[j];
      if(cur[cur.size() - 1] == next[0]){
	cur.insert(cur.end(), next.begin() + 1, next.end());
	storeSCEVs.erase(storeSCEVs.begin() + j);
	break;
      }
    }
  }

}

unsigned extendSCEVs(ScevVector &storeSCEVs, unsigned depth, unsigned mergeAmount, unsigned storeSize, unsigned ptrSize, ScalarEvolution * SE){

  unsigned curDepth = 1;

  while(true){

    ScevVector currentSCEVs = storeSCEVs;
    for(unsigned i=0; i < currentSCEVs.size(); i++){
      ScevStore &vec = currentSCEVs[i];
      for(unsigned j=0; j < vec.size(); j++){
	extendSCEV(storeSCEVs, vec[j],storeSize, ptrSize, SE);
      }
    }

    mergeSCEVs(storeSCEVs);
    CHDEBUG(printSCEVs(storeSCEVs));

    if(checkUnrolled(storeSCEVs, mergeAmount))
      return curDepth + 1;
    if(storeSCEVs.size() > currentSCEVs.size())
      return 1;
    if(curDepth > depth)
      return 1;
    curDepth++;
  }

}

unsigned RevecAnalysis::getUnrollCountStores(unsigned int merge_amount){

 

  bool alreadyUnrolled = true;
  for(unsigned int i = 0; i < bundledStores.size(); i++){
    ValueList &V = bundledStores[i];
    if(V.size() % merge_amount == 0) continue;
    alreadyUnrolled = false;
  }

  if(alreadyUnrolled){
    CHDEBUG(dbgs() << "REVAN: already unrolled\n");
    return 1;
  }
  else{
    //we need all stores to have addRecExprs; otherwise we do not know what addresses unrolling will give out
    SmallVector<SmallVector<const SCEVAddRecExpr *, 8>, 8> storeSCEVs;
    unsigned storeSize = 0;
    unsigned ptrSize = 0;

    StoreInst * st = dyn_cast<StoreInst>(bundledStores[0][0]);
    Value * valueOp = st->getValueOperand();
    VectorType * vecTy = dyn_cast<VectorType>(valueOp->getType());
    unsigned numElem = vecTy->getNumElements();
    unsigned elemSize = vecTy->getElementType()->getPrimitiveSizeInBits();   
    storeSize = numElem * elemSize;
   

    CHDEBUG(dbgs() << "REVAN: scevs for stores");
    for(unsigned int i=0; i< bundledStores.size(); i++){
      ValueList &V = bundledStores[i];
      SmallVector<const SCEVAddRecExpr *, 8> scevs;
      CHDEBUG(dbgs() <<  i << " { \n");
      for(unsigned int j=0; j< V.size(); j++){
	StoreInst * st = dyn_cast<StoreInst>(V[j]);
	const SCEV *scev = SE->getSCEV(st->getPointerOperand());
	unsigned ASA = st->getPointerAddressSpace();
	ptrSize = DL->getPointerSizeInBits(ASA);
	CHDEBUG(scev->print(dbgs()));
	CHDEBUG(dbgs() << "\n");
	const SCEVAddRecExpr * addrec = dyn_cast<SCEVAddRecExpr>(scev);
	if(addrec){
	  scevs.push_back(addrec);
	}
	else{
	  CHDEBUG(dbgs() << "REVAN: non addrec expr\n");
	  //get the smalllest store bundle conservatively unroll lcm(merge_amount, smallest);
	  unsigned int minList = 2e5;
	  for(unsigned int k=0; k < bundledStores.size(); k++){
	    ValueList &VL = bundledStores[k];
	    if(VL.size() < minList) minList = VL.size();
	  }
	  
	  CHDEBUG(dbgs() << "REVAN: unroll count " << lcm(merge_amount, minList) << "\n");
	  return lcm(merge_amount, minList);
	}
      }
      storeSCEVs.push_back(scevs);
    }


    return extendSCEVs(storeSCEVs, 4, merge_amount, storeSize, ptrSize, SE);
  }


}

//calculates the unroll count based on the current vector seeds - which are stores

unsigned RevecAnalysis::calculateUnrollCount() {
	
  if (vectorSeeds.empty()) return 1;
	
  int merge_amount = -1;
  
  Instruction * I = cast<Instruction>(vectorSeeds[0]);
  StoreInst * st = dyn_cast<StoreInst>(I);
  assert(st && "ERROR: only store instructions are collected as seeds");
  Type * ty = st->getValueOperand()->getType();
  assert(isa<VectorType>(ty) && "ERROR: not a vector type!");
  
  VectorType * vecTy = cast<VectorType>(ty);
  unsigned elements = vecTy->getNumElements();
  unsigned element_size = vecTy->getElementType()->getPrimitiveSizeInBits();
  
  CHDEBUG(dbgs() << "REVAN: initial seeds elems " << elements << " of size " << element_size << "\n");
  
  //technically this constraint can be reduced as well by merge_amount = lcm(maxWidth / element_size, elements) -> this needs unpacking and repacking within a bundle - what does this mean?
  
  
  if ((maxWidth / element_size) % elements == 0){ 
    
    //maximum amount of vector instructions that can be merged
    merge_amount = (maxWidth / element_size) / elements;
    
    StoreInst * I = dyn_cast<StoreInst>(vectorSeeds[0]);
    if(I){
      CHDEBUG(dbgs() << "REVAN: store instructions\n");
      //need to get bundles of consecutive accesses
      getConsecutiveMemRefs();
      
      //print out the consecutive memory accesses
      CHDEBUG(dbgs() << "REVAN: consecutive stores ");
      for(unsigned i = 0; i < bundledStores.size(); i++){
	ValueList &V = bundledStores[i];
	CHDEBUG(dbgs() << i << " {\n");
	for(unsigned j=0; j < V.size(); j++){
	  CHDEBUG(V[j]->print(dbgs()));
	  CHDEBUG(dbgs() << "\n");
	}
	CHDEBUG(dbgs() << " }\n");
      }
      return getUnrollCountStores(merge_amount);
      
    }
    else{
      assert(false && "ERROR: non store instructions found");
      CHDEBUG(dbgs() << "REVAN: non-store instructions\n"); 
      //merge amount = how many vector ins should be merged; size of vectorSeeds - mergeable so take the lcm of both
      unsigned unrollCount = 0;
      if(vectorSeeds.size() % merge_amount == 0) unrollCount = 1;
      else unrollCount = lcm(merge_amount, vectorSeeds.size());
      
      CHDEBUG(dbgs() << "REVAN: unroll count " << unrollCount << "\n");
      return unrollCount;
    }
  }
  
  return 1;
}

char RevecAnalysisPass::ID = 0;
static const char lv_name[] = "RevecAnalysis";
INITIALIZE_PASS_BEGIN(RevecAnalysisPass, SV_NAME, lv_name, false, false)
INITIALIZE_PASS_DEPENDENCY(AAResultsWrapperPass)
INITIALIZE_PASS_DEPENDENCY(TargetTransformInfoWrapperPass)
INITIALIZE_PASS_DEPENDENCY(AssumptionCacheTracker)
INITIALIZE_PASS_DEPENDENCY(ScalarEvolutionWrapperPass)
INITIALIZE_PASS_DEPENDENCY(LoopSimplify)
INITIALIZE_PASS_DEPENDENCY(DemandedBitsWrapperPass)
INITIALIZE_PASS_END(RevecAnalysisPass, SV_NAME, lv_name, false, false)

namespace llvm {
Pass *createRevecAnalysisPass() { return new RevecAnalysisPass(); }
}
