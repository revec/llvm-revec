add_llvm_library(LLVMVectorize
  LoopPreVec.cpp
  LoadStoreVectorizer.cpp
  LoopVectorizationLegality.cpp
  LoopVectorize.cpp
  SLPVectorizer.cpp
  Revectorizer.cpp
  Vectorize.cpp
  VPlan.cpp
  VPlanHCFGBuilder.cpp
  VPlanHCFGTransforms.cpp
  VPlanVerifier.cpp

  ADDITIONAL_HEADER_DIRS
  ${LLVM_MAIN_INCLUDE_DIR}/llvm/Transforms

  DEPENDS
  intrinsics_gen
  )
