//===- LoopUnrollPass.h -----------------------------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_TRANSFORMS_VECTOR_LOOPPREVEC_H
#define LLVM_TRANSFORMS_VECTOR_LOOPPREVEC_H

#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/IR/PassManager.h"

namespace llvm {

/// Loop unroll pass that will support both full and partial unrolling.
/// It is a function pass to have access to function and module analyses.
/// It will also put loops into canonical form (simplified and LCSSA).
class LoopPreVecPass : public PassInfoMixin<LoopPreVecPass> {

public:

  Loop * L = nullptr;
  DominatorTree * DT = nullptr;
  LoopInfo * LI = nullptr;
  ScalarEvolution * SE = nullptr;
  TargetTransformInfo * TTI = nullptr;
  AssumptionCache * AC = nullptr;


  /// This uses the target information (or flags) to control the thresholds for
  /// different unrolling stategies but supports all of them.
  explicit LoopPreVecPass() {}

  PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM);

  bool runImpl(Loop * L_, ScalarEvolution *SE_, TargetTransformInfo *TTI_,
               LoopInfo *LI_ , DominatorTree *DT_, AssumptionCache *AC_);

private:

  void printLoop();
  bool identifyReductionPHI();


  
  
};

Pass *createLoopPreVecPass();
  
} // end namespace llvm



#endif // LLVM_TRANSFORMS_SCALAR_LOOPUNROLLPASS_H
