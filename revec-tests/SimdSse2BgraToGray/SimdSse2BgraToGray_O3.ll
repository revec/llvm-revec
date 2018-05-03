; ModuleID = 'SimdSse2BgraToGray/SimdSse2BgraToGray.cpp'
source_filename = "SimdSse2BgraToGray/SimdSse2BgraToGray.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [11 x i8] c"width >= A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"SimdSse2BgraToGray/SimdSse2BgraToGray.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm = private unnamed_addr constant [108 x i8] c"void Simd::Sse2::BgraToGray(const uint8_t *__restrict, size_t, size_t, size_t, uint8_t *__restrict, size_t)\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"Aligned(bgra) && Aligned(bgraStride) && Aligned(gray) && Aligned(grayStride)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"alignedWidth == width\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SimdSse2BgraToGray.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define void @_ZN4Simd4Sse210BgraToGrayEPKhmmmPhm(i8* noalias, i64, i64, i64, i8* noalias, i64) local_unnamed_addr #3 {
  %7 = icmp ugt i64 %1, 15
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %6
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, i64 0, i64 0)) #6
  unreachable

; <label>:9:                                      ; preds = %6
  %10 = ptrtoint i8* %0 to i64
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to i8*
  %13 = icmp eq i8* %12, %0
  %14 = and i64 %3, -16
  %15 = icmp eq i64 %14, %3
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %9
  %18 = ptrtoint i8* %4 to i64
  %19 = and i64 %18, -16
  %20 = inttoptr i64 %19 to i8*
  %21 = icmp eq i8* %20, %4
  %22 = and i64 %5, -16
  %23 = icmp eq i64 %22, %5
  %24 = and i1 %23, %21
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %17, %9
  tail call void @__assert_fail(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, i64 0, i64 0)) #6
  unreachable

; <label>:26:                                     ; preds = %17
  %27 = and i64 %1, -16
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %26
  tail call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, i64 0, i64 0)) #6
  unreachable

; <label>:30:                                     ; preds = %26
  %31 = icmp eq i64 %2, 0
  br i1 %31, label %246, label %32

; <label>:32:                                     ; preds = %30
  %33 = add i64 %1, -1
  %34 = lshr i64 %33, 4
  %35 = add nuw nsw i64 %34, 1
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %34, 0
  %38 = icmp eq i64 %36, 0
  %39 = sub nsw i64 %35, %36
  br label %40

; <label>:40:                                     ; preds = %241, %32
  %41 = phi i64 [ 0, %32 ], [ %244, %241 ]
  %42 = phi i8* [ %0, %32 ], [ %242, %241 ]
  %43 = phi i8* [ %4, %32 ], [ %243, %241 ]
  br i1 %37, label %176, label %44

; <label>:44:                                     ; preds = %40
  br label %45

; <label>:45:                                     ; preds = %44, %45
  %46 = phi i64 [ %173, %45 ], [ 0, %44 ]
  %47 = phi i64 [ %174, %45 ], [ %39, %44 ]
  %48 = shl i64 %46, 2
  %49 = getelementptr inbounds i8, i8* %42, i64 %48
  %50 = bitcast i8* %49 to <2 x i64>*
  %51 = load <2 x i64>, <2 x i64>* %50, align 16, !tbaa !2, !alias.scope !5
  %52 = getelementptr inbounds i8, i8* %49, i64 16
  %53 = bitcast i8* %52 to <2 x i64>*
  %54 = load <2 x i64>, <2 x i64>* %53, align 16, !tbaa !2, !alias.scope !5
  %55 = getelementptr inbounds i8, i8* %49, i64 32
  %56 = bitcast i8* %55 to <2 x i64>*
  %57 = load <2 x i64>, <2 x i64>* %56, align 16, !tbaa !2, !alias.scope !5
  %58 = getelementptr inbounds i8, i8* %49, i64 48
  %59 = bitcast i8* %58 to <2 x i64>*
  %60 = load <2 x i64>, <2 x i64>* %59, align 16, !tbaa !2, !alias.scope !5
  %61 = getelementptr inbounds i8, i8* %43, i64 %46
  %62 = bitcast <2 x i64> %51 to <16 x i8>
  %63 = shufflevector <16 x i8> %62, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %64 = bitcast <16 x i8> %63 to <8 x i16>
  %65 = and <8 x i16> %64, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %66 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %65, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %67 = bitcast <2 x i64> %51 to <8 x i16>
  %68 = and <8 x i16> %67, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %69 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %68, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %70 = add <4 x i32> %66, <i32 8192, i32 8192, i32 8192, i32 8192>
  %71 = add <4 x i32> %70, %69
  %72 = lshr <4 x i32> %71, <i32 14, i32 14, i32 14, i32 14>
  %73 = bitcast <2 x i64> %54 to <16 x i8>
  %74 = shufflevector <16 x i8> %73, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %75 = bitcast <16 x i8> %74 to <8 x i16>
  %76 = and <8 x i16> %75, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %77 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %76, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %78 = bitcast <2 x i64> %54 to <8 x i16>
  %79 = and <8 x i16> %78, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %80 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %79, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %81 = add <4 x i32> %77, <i32 8192, i32 8192, i32 8192, i32 8192>
  %82 = add <4 x i32> %81, %80
  %83 = lshr <4 x i32> %82, <i32 14, i32 14, i32 14, i32 14>
  %84 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %72, <4 x i32> %83) #2
  %85 = bitcast <2 x i64> %57 to <16 x i8>
  %86 = shufflevector <16 x i8> %85, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %87 = bitcast <16 x i8> %86 to <8 x i16>
  %88 = and <8 x i16> %87, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %89 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %88, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %90 = bitcast <2 x i64> %57 to <8 x i16>
  %91 = and <8 x i16> %90, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %92 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %91, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %93 = add <4 x i32> %89, <i32 8192, i32 8192, i32 8192, i32 8192>
  %94 = add <4 x i32> %93, %92
  %95 = lshr <4 x i32> %94, <i32 14, i32 14, i32 14, i32 14>
  %96 = bitcast <2 x i64> %60 to <16 x i8>
  %97 = shufflevector <16 x i8> %96, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %98 = bitcast <16 x i8> %97 to <8 x i16>
  %99 = and <8 x i16> %98, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %100 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %99, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %101 = bitcast <2 x i64> %60 to <8 x i16>
  %102 = and <8 x i16> %101, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %103 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %102, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %104 = add <4 x i32> %100, <i32 8192, i32 8192, i32 8192, i32 8192>
  %105 = add <4 x i32> %104, %103
  %106 = lshr <4 x i32> %105, <i32 14, i32 14, i32 14, i32 14>
  %107 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %95, <4 x i32> %106) #2
  %108 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %84, <8 x i16> %107) #2
  %109 = bitcast i8* %61 to <16 x i8>*
  store <16 x i8> %108, <16 x i8>* %109, align 16, !tbaa !2
  %110 = or i64 %46, 16
  %111 = shl i64 %110, 2
  %112 = getelementptr inbounds i8, i8* %42, i64 %111
  %113 = bitcast i8* %112 to <2 x i64>*
  %114 = load <2 x i64>, <2 x i64>* %113, align 16, !tbaa !2, !alias.scope !5
  %115 = getelementptr inbounds i8, i8* %112, i64 16
  %116 = bitcast i8* %115 to <2 x i64>*
  %117 = load <2 x i64>, <2 x i64>* %116, align 16, !tbaa !2, !alias.scope !5
  %118 = getelementptr inbounds i8, i8* %112, i64 32
  %119 = bitcast i8* %118 to <2 x i64>*
  %120 = load <2 x i64>, <2 x i64>* %119, align 16, !tbaa !2, !alias.scope !5
  %121 = getelementptr inbounds i8, i8* %112, i64 48
  %122 = bitcast i8* %121 to <2 x i64>*
  %123 = load <2 x i64>, <2 x i64>* %122, align 16, !tbaa !2, !alias.scope !5
  %124 = getelementptr inbounds i8, i8* %43, i64 %110
  %125 = bitcast <2 x i64> %114 to <16 x i8>
  %126 = shufflevector <16 x i8> %125, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %127 = bitcast <16 x i8> %126 to <8 x i16>
  %128 = and <8 x i16> %127, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %129 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %128, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %130 = bitcast <2 x i64> %114 to <8 x i16>
  %131 = and <8 x i16> %130, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %132 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %131, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %133 = add <4 x i32> %129, <i32 8192, i32 8192, i32 8192, i32 8192>
  %134 = add <4 x i32> %133, %132
  %135 = lshr <4 x i32> %134, <i32 14, i32 14, i32 14, i32 14>
  %136 = bitcast <2 x i64> %117 to <16 x i8>
  %137 = shufflevector <16 x i8> %136, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %138 = bitcast <16 x i8> %137 to <8 x i16>
  %139 = and <8 x i16> %138, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %140 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %139, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %141 = bitcast <2 x i64> %117 to <8 x i16>
  %142 = and <8 x i16> %141, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %143 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %142, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %144 = add <4 x i32> %140, <i32 8192, i32 8192, i32 8192, i32 8192>
  %145 = add <4 x i32> %144, %143
  %146 = lshr <4 x i32> %145, <i32 14, i32 14, i32 14, i32 14>
  %147 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %135, <4 x i32> %146) #2
  %148 = bitcast <2 x i64> %120 to <16 x i8>
  %149 = shufflevector <16 x i8> %148, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %150 = bitcast <16 x i8> %149 to <8 x i16>
  %151 = and <8 x i16> %150, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %152 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %151, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %153 = bitcast <2 x i64> %120 to <8 x i16>
  %154 = and <8 x i16> %153, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %155 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %154, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %156 = add <4 x i32> %152, <i32 8192, i32 8192, i32 8192, i32 8192>
  %157 = add <4 x i32> %156, %155
  %158 = lshr <4 x i32> %157, <i32 14, i32 14, i32 14, i32 14>
  %159 = bitcast <2 x i64> %123 to <16 x i8>
  %160 = shufflevector <16 x i8> %159, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %161 = bitcast <16 x i8> %160 to <8 x i16>
  %162 = and <8 x i16> %161, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %163 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %162, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %164 = bitcast <2 x i64> %123 to <8 x i16>
  %165 = and <8 x i16> %164, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %166 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %165, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %167 = add <4 x i32> %163, <i32 8192, i32 8192, i32 8192, i32 8192>
  %168 = add <4 x i32> %167, %166
  %169 = lshr <4 x i32> %168, <i32 14, i32 14, i32 14, i32 14>
  %170 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %158, <4 x i32> %169) #2
  %171 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %147, <8 x i16> %170) #2
  %172 = bitcast i8* %124 to <16 x i8>*
  store <16 x i8> %171, <16 x i8>* %172, align 16, !tbaa !2
  %173 = add i64 %46, 32
  %174 = add i64 %47, -2
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %45, !llvm.loop !8

; <label>:176:                                    ; preds = %45, %40
  %177 = phi i64 [ 0, %40 ], [ %173, %45 ]
  br i1 %38, label %241, label %178

; <label>:178:                                    ; preds = %176
  %179 = shl i64 %177, 2
  %180 = getelementptr inbounds i8, i8* %42, i64 %179
  %181 = bitcast i8* %180 to <2 x i64>*
  %182 = load <2 x i64>, <2 x i64>* %181, align 16, !tbaa !2, !alias.scope !5
  %183 = getelementptr inbounds i8, i8* %180, i64 16
  %184 = bitcast i8* %183 to <2 x i64>*
  %185 = load <2 x i64>, <2 x i64>* %184, align 16, !tbaa !2, !alias.scope !5
  %186 = getelementptr inbounds i8, i8* %180, i64 32
  %187 = bitcast i8* %186 to <2 x i64>*
  %188 = load <2 x i64>, <2 x i64>* %187, align 16, !tbaa !2, !alias.scope !5
  %189 = getelementptr inbounds i8, i8* %180, i64 48
  %190 = bitcast i8* %189 to <2 x i64>*
  %191 = load <2 x i64>, <2 x i64>* %190, align 16, !tbaa !2, !alias.scope !5
  %192 = getelementptr inbounds i8, i8* %43, i64 %177
  %193 = bitcast <2 x i64> %182 to <16 x i8>
  %194 = shufflevector <16 x i8> %193, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %195 = bitcast <16 x i8> %194 to <8 x i16>
  %196 = and <8 x i16> %195, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %197 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %196, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %198 = bitcast <2 x i64> %182 to <8 x i16>
  %199 = and <8 x i16> %198, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %200 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %199, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %201 = add <4 x i32> %197, <i32 8192, i32 8192, i32 8192, i32 8192>
  %202 = add <4 x i32> %201, %200
  %203 = lshr <4 x i32> %202, <i32 14, i32 14, i32 14, i32 14>
  %204 = bitcast <2 x i64> %185 to <16 x i8>
  %205 = shufflevector <16 x i8> %204, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %206 = bitcast <16 x i8> %205 to <8 x i16>
  %207 = and <8 x i16> %206, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %208 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %207, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %209 = bitcast <2 x i64> %185 to <8 x i16>
  %210 = and <8 x i16> %209, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %211 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %210, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %212 = add <4 x i32> %208, <i32 8192, i32 8192, i32 8192, i32 8192>
  %213 = add <4 x i32> %212, %211
  %214 = lshr <4 x i32> %213, <i32 14, i32 14, i32 14, i32 14>
  %215 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %203, <4 x i32> %214) #2
  %216 = bitcast <2 x i64> %188 to <16 x i8>
  %217 = shufflevector <16 x i8> %216, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %218 = bitcast <16 x i8> %217 to <8 x i16>
  %219 = and <8 x i16> %218, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %220 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %219, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %221 = bitcast <2 x i64> %188 to <8 x i16>
  %222 = and <8 x i16> %221, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %223 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %222, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %224 = add <4 x i32> %220, <i32 8192, i32 8192, i32 8192, i32 8192>
  %225 = add <4 x i32> %224, %223
  %226 = lshr <4 x i32> %225, <i32 14, i32 14, i32 14, i32 14>
  %227 = bitcast <2 x i64> %191 to <16 x i8>
  %228 = shufflevector <16 x i8> %227, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %229 = bitcast <16 x i8> %228 to <8 x i16>
  %230 = and <8 x i16> %229, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %231 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %230, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #2
  %232 = bitcast <2 x i64> %191 to <8 x i16>
  %233 = and <8 x i16> %232, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %234 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %233, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #2
  %235 = add <4 x i32> %231, <i32 8192, i32 8192, i32 8192, i32 8192>
  %236 = add <4 x i32> %235, %234
  %237 = lshr <4 x i32> %236, <i32 14, i32 14, i32 14, i32 14>
  %238 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %226, <4 x i32> %237) #2
  %239 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %215, <8 x i16> %238) #2
  %240 = bitcast i8* %192 to <16 x i8>*
  store <16 x i8> %239, <16 x i8>* %240, align 16, !tbaa !2
  br label %241

; <label>:241:                                    ; preds = %176, %178
  %242 = getelementptr inbounds i8, i8* %42, i64 %3
  %243 = getelementptr inbounds i8, i8* %43, i64 %5
  %244 = add nuw i64 %41, 1
  %245 = icmp eq i64 %244, %2
  br i1 %245, label %246, label %40

; <label>:246:                                    ; preds = %241, %30
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #5

; Function Attrs: nounwind readnone
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #5

; Function Attrs: nounwind readnone
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SimdSse2BgraToGray.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #2
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-svn326550-1~exp1~20180305180131.61 (branches/release_60)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN4Simd4Sse24LoadILb1EEEvPKhPDv2_x: argument 0"}
!7 = distinct !{!7, !"_ZN4Simd4Sse24LoadILb1EEEvPKhPDv2_x"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
