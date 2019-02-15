# Revec: Program Rejuvenation through Revectorization

This is a fork of the LLVM repository that implements _Revec_, an IR-level pass that retargets vectorized code between processor generations. In general, _revectorization_ is our proposed task of recompiling non-portable vectorized code to leverage higher bitwidth instruction sets on newer architectures.

For details of the pass, please see [Revec: Program Rejuvenation through Revectorization](https://arxiv.org/pdf/1902.02816.pdf).

Citation: (* denotes equal contribution)

> _Charith Mendis \*, Ajay Jain \*, Paras Jain, and Saman Amarasinghe. 2019. Revec: Program Rejuvenation through Revectorization. In Proceedings of the 28th International Conference on Compiler Construction (CC ’19), February 16–17, 2019, Washington, DC, USA. ACM, New York, NY, USA, 13 pages._

## Compiling LLVM and Clang with Revec

Install Clang-6.0, CMake, and Ninja to build our modified version of LLVM/Clang:

```sh
sudo apt-get update
sudo apt-get install llvm-6.0 clang-6.0 cmake ninja-build
```

Clone LLVM and Clang with the Revectorizer pass:

```sh
cd $ROOTDIR
git clone git@github.com:revec/llvm-revec.git llvm

cd $ROOTDIR/llvm/tools
git clone git@github.com:revec/clang-revec.git clang

cd $ROOTDIR/llvm/tools/clang
git clone git@github.com:llvm-mirror/clang-tools-extra.git extra

cd $ROOTDIR/llvm/projects
git clone git@github.com:llvm-mirror/libcxx.git
git clone git@github.com:llvm-mirror/libcxxabi.git
git clone git@github.com:llvm-mirror/compiler-rt.git
```

Build Clang:

```sh
mkdir $ROOTDIR/build
cd $ROOTDIR/build
CXX=clang++-6.0 CC=clang-6.0 cmake -G Ninja ../llvm -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLLVM_USE_LINKER=gold -DLLVM_TARGETS_TO_BUILD="X86"
ninja clang
```
