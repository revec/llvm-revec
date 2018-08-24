//===---- SLPVectorizer.h ---------------------------------------*- C++ -*-===//
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

#ifndef LLVM_TRANSFORMS_VECTORIZE_REVECUNROLL_H
#define LLVM_TRANSFORMS_VECTORIZE_REVECUNROLL_H

#include "llvm/ADT/MapVector.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/DemandedBits.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/TargetTransformInfo.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/raw_ostream.h"

namespace llvm {

struct RevecAnalysisPass;

struct RevecAnalysis : public PassInfoMixin<RevecAnalysis> {
  typedef SmallVector<StoreInst *, 8> StoreList;
  typedef MapVector<Value *, StoreList> StoreListMap;
  typedef SmallVector<WeakVH, 8> WeakVHList;
  typedef MapVector<Value *, WeakVHList> WeakVHListMap;

  typedef SmallVector<Value *, 8> ValueList;

  

  ScalarEvolution *SE = nullptr;
  TargetTransformInfo *TTI = nullptr;
  TargetLibraryInfo *TLI = nullptr;
  AliasAnalysis *AA = nullptr;
  LoopInfo *LI = nullptr;
  DominatorTree *DT = nullptr;
  AssumptionCache *AC = nullptr;
  DemandedBits *DB = nullptr;
  const DataLayout *DL = nullptr;
public:


  //PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM);

  // Glue for old PM.
  bool runImpl(Function &F, ScalarEvolution *SE_, TargetTransformInfo *TTI_,
               TargetLibraryInfo *TLI_, AliasAnalysis *AA_, LoopInfo *LI_,
			   DominatorTree *DT_, AssumptionCache *AC_, DemandedBits *DB_, RevecAnalysisPass * Revec);


private:

    
  //maximum register width
  unsigned int maxWidth;
  //seeds for revectorization
  ValueList  vectorSeeds;
  /// The store instructions in a basic block organized by base pointer.
  StoreListMap Stores;
  //bundled stores
  SmallVector<ValueList,8> bundledStores;
 
  //calculates the unroll count for a loop
  unsigned calculateUnrollCount();
  void collectSeedInstructions(BasicBlock *BB);
  void getConsecutiveMemRefs();
  unsigned getUnrollCountStores(unsigned int merge_amount);
  
};




struct RevecAnalysisPass : public FunctionPass {

public:
	typedef DenseMap<Loop *, unsigned> LoopMap;

private:
	RevecAnalysis Impl;
	LoopMap UnrollCount;


public:
	/// Pass identification, replacement for typeid
	static char ID;

	explicit RevecAnalysisPass();
	bool doInitialization(Module &M) override;
	bool runOnFunction(Function &F) override;
	void getAnalysisUsage(AnalysisUsage &AU) const override;
	LoopMap& getUC();
	void setUnrollCount(Loop * L, unsigned count);
};


Pass *createRevecAnalysisPass();

}


#endif // LLVM_TRANSFORMS_VECTORIZE_REVECTORIZER_H
