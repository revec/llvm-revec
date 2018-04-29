; ModuleID = 'SimdSse2Neural.cpp'
source_filename = "SimdSse2Neural.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf = comdat any

$_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf = comdat any

@.str = private unnamed_addr constant [11 x i8] c"width >= A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SimdSse2Neural.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf = private unnamed_addr constant [129 x i8] c"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = true, align = true, stream = true]\00", align 1
@__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf = private unnamed_addr constant [130 x i8] c"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = true, align = true, stream = false]\00", align 1
@__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf = private unnamed_addr constant [131 x i8] c"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = true, align = false, stream = false]\00", align 1
@__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf = private unnamed_addr constant [130 x i8] c"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = false, align = true, stream = true]\00", align 1
@__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb0EEEvPKhmmmPf = private unnamed_addr constant [131 x i8] c"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = false, align = true, stream = false]\00", align 1
@__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf = private unnamed_addr constant [132 x i8] c"void Simd::Sse2::NeuralConvert(const uint8_t *, size_t, size_t, size_t, float *) [inversion = false, align = false, stream = false]\00", align 1

; Function Attrs: norecurse nounwind readnone uwtable
define <2 x i64> @_ZN4Simd4Sse26InvertILb1EEEDv2_xS2_(<2 x i64>) local_unnamed_addr #0 {
  %2 = xor <2 x i64> %0, <i64 -1, i64 -1>
  ret <2 x i64> %2
}

; Function Attrs: norecurse nounwind readnone uwtable
define <2 x i64> @_ZN4Simd4Sse26InvertILb0EEEDv2_xS2_(<2 x i64> returned) local_unnamed_addr #0 {
  ret <2 x i64> %0
}

; Function Attrs: uwtable
define void @_ZN4Simd4Sse213NeuralConvertEPKhmmmPfi(i8*, i64, i64, i64, float*, i32) local_unnamed_addr #1 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %6
  tail call void @_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf(i8* %0, i64 %1, i64 %2, i64 %3, float* %4)
  br label %10

; <label>:9:                                      ; preds = %6
  tail call void @_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf(i8* %0, i64 %1, i64 %2, i64 %3, float* %4)
  br label %10

; <label>:10:                                     ; preds = %9, %8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf(i8*, i64, i64, i64, float*) local_unnamed_addr #1 comdat {
  %6 = ptrtoint i8* %0 to i64
  %7 = and i64 %6, -16
  %8 = inttoptr i64 %7 to i8*
  %9 = icmp eq i8* %8, %0
  %10 = and i64 %1, -16
  %11 = icmp eq i64 %10, %1
  %12 = and i1 %11, %9
  br i1 %12, label %13, label %128

; <label>:13:                                     ; preds = %5
  %14 = bitcast float* %4 to i8*
  %15 = ptrtoint float* %4 to i64
  %16 = and i64 %15, -16
  %17 = inttoptr i64 %16 to i8*
  %18 = icmp eq i8* %17, %14
  %19 = and i64 %2, -16
  %20 = icmp eq i64 %19, %2
  %21 = and i1 %20, %18
  br i1 %21, label %22, label %128

; <label>:22:                                     ; preds = %13
  %23 = shl i64 %2, 2
  %24 = mul i64 %23, %3
  %25 = icmp ugt i64 %24, 1048575
  %26 = icmp ugt i64 %2, 15
  br i1 %25, label %27, label %78

; <label>:27:                                     ; preds = %22
  br i1 %26, label %29, label %28

; <label>:28:                                     ; preds = %27
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf, i64 0, i64 0)) #5
  unreachable

; <label>:29:                                     ; preds = %27
  %30 = icmp eq i64 %3, 0
  br i1 %30, label %77, label %31

; <label>:31:                                     ; preds = %29
  br label %32

; <label>:32:                                     ; preds = %31, %72
  %33 = phi i64 [ %75, %72 ], [ 0, %31 ]
  %34 = phi i8* [ %73, %72 ], [ %0, %31 ]
  %35 = phi float* [ %74, %72 ], [ %4, %31 ]
  br label %36

; <label>:36:                                     ; preds = %36, %32
  %37 = phi i64 [ 0, %32 ], [ %70, %36 ]
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = getelementptr inbounds float, float* %35, i64 %37
  %40 = bitcast i8* %38 to <16 x i8>*
  %41 = load <16 x i8>, <16 x i8>* %40, align 16, !tbaa !2
  %42 = xor <16 x i8> %41, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %43 = shufflevector <16 x i8> %42, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %44 = bitcast <16 x i8> %43 to <8 x i16>
  %45 = shufflevector <8 x i16> %44, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %46 = bitcast <8 x i16> %45 to <4 x i32>
  %47 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %46) #3
  %48 = fmul <4 x float> %47, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %49 = bitcast float* %39 to <4 x float>*
  store <4 x float> %48, <4 x float>* %49, align 16, !tbaa !2, !nontemporal !5
  %50 = getelementptr inbounds float, float* %39, i64 4
  %51 = shufflevector <8 x i16> %44, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %52 = bitcast <8 x i16> %51 to <4 x i32>
  %53 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %52) #3
  %54 = fmul <4 x float> %53, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %55 = bitcast float* %50 to <4 x float>*
  store <4 x float> %54, <4 x float>* %55, align 16, !tbaa !2, !nontemporal !5
  %56 = shufflevector <16 x i8> %42, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %57 = getelementptr inbounds float, float* %39, i64 8
  %58 = bitcast <16 x i8> %56 to <8 x i16>
  %59 = shufflevector <8 x i16> %58, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %60 = bitcast <8 x i16> %59 to <4 x i32>
  %61 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %60) #3
  %62 = fmul <4 x float> %61, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %63 = bitcast float* %57 to <4 x float>*
  store <4 x float> %62, <4 x float>* %63, align 16, !tbaa !2, !nontemporal !5
  %64 = getelementptr inbounds float, float* %39, i64 12
  %65 = shufflevector <8 x i16> %58, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %66 = bitcast <8 x i16> %65 to <4 x i32>
  %67 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %66) #3
  %68 = fmul <4 x float> %67, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %69 = bitcast float* %64 to <4 x float>*
  store <4 x float> %68, <4 x float>* %69, align 16, !tbaa !2, !nontemporal !5
  %70 = add nuw i64 %37, 16
  %71 = icmp ult i64 %70, %2
  br i1 %71, label %36, label %72

; <label>:72:                                     ; preds = %36
  %73 = getelementptr inbounds i8, i8* %34, i64 %1
  %74 = getelementptr inbounds float, float* %35, i64 %2
  %75 = add nuw i64 %33, 1
  %76 = icmp eq i64 %75, %3
  br i1 %76, label %77, label %32

; <label>:77:                                     ; preds = %72, %29
  tail call void @llvm.x86.sse2.mfence()
  br label %306

; <label>:78:                                     ; preds = %22
  br i1 %26, label %80, label %79

; <label>:79:                                     ; preds = %78
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf, i64 0, i64 0)) #5
  unreachable

; <label>:80:                                     ; preds = %78
  %81 = icmp eq i64 %3, 0
  br i1 %81, label %306, label %82

; <label>:82:                                     ; preds = %80
  br label %83

; <label>:83:                                     ; preds = %82, %123
  %84 = phi i64 [ %126, %123 ], [ 0, %82 ]
  %85 = phi i8* [ %124, %123 ], [ %0, %82 ]
  %86 = phi float* [ %125, %123 ], [ %4, %82 ]
  br label %87

; <label>:87:                                     ; preds = %87, %83
  %88 = phi i64 [ 0, %83 ], [ %121, %87 ]
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = getelementptr inbounds float, float* %86, i64 %88
  %91 = bitcast i8* %89 to <16 x i8>*
  %92 = load <16 x i8>, <16 x i8>* %91, align 16, !tbaa !2
  %93 = xor <16 x i8> %92, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %94 = shufflevector <16 x i8> %93, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %95 = bitcast <16 x i8> %94 to <8 x i16>
  %96 = shufflevector <8 x i16> %95, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %97 = bitcast <8 x i16> %96 to <4 x i32>
  %98 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %97) #3
  %99 = fmul <4 x float> %98, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %100 = bitcast float* %90 to <4 x float>*
  store <4 x float> %99, <4 x float>* %100, align 16, !tbaa !2
  %101 = getelementptr inbounds float, float* %90, i64 4
  %102 = shufflevector <8 x i16> %95, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %103 = bitcast <8 x i16> %102 to <4 x i32>
  %104 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %103) #3
  %105 = fmul <4 x float> %104, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %106 = bitcast float* %101 to <4 x float>*
  store <4 x float> %105, <4 x float>* %106, align 16, !tbaa !2
  %107 = shufflevector <16 x i8> %93, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %108 = getelementptr inbounds float, float* %90, i64 8
  %109 = bitcast <16 x i8> %107 to <8 x i16>
  %110 = shufflevector <8 x i16> %109, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %111 = bitcast <8 x i16> %110 to <4 x i32>
  %112 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %111) #3
  %113 = fmul <4 x float> %112, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %114 = bitcast float* %108 to <4 x float>*
  store <4 x float> %113, <4 x float>* %114, align 16, !tbaa !2
  %115 = getelementptr inbounds float, float* %90, i64 12
  %116 = shufflevector <8 x i16> %109, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %117 = bitcast <8 x i16> %116 to <4 x i32>
  %118 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %117) #3
  %119 = fmul <4 x float> %118, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %120 = bitcast float* %115 to <4 x float>*
  store <4 x float> %119, <4 x float>* %120, align 16, !tbaa !2
  %121 = add nuw i64 %88, 16
  %122 = icmp ult i64 %121, %2
  br i1 %122, label %87, label %123

; <label>:123:                                    ; preds = %87
  %124 = getelementptr inbounds i8, i8* %85, i64 %1
  %125 = getelementptr inbounds float, float* %86, i64 %2
  %126 = add nuw i64 %84, 1
  %127 = icmp eq i64 %126, %3
  br i1 %127, label %306, label %83

; <label>:128:                                    ; preds = %13, %5
  %129 = icmp ugt i64 %2, 15
  br i1 %129, label %131, label %130

; <label>:130:                                    ; preds = %128
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf, i64 0, i64 0)) #5
  unreachable

; <label>:131:                                    ; preds = %128
  %132 = and i64 %2, -16
  %133 = icmp eq i64 %3, 0
  br i1 %133, label %306, label %134

; <label>:134:                                    ; preds = %131
  %135 = icmp eq i64 %132, 0
  %136 = icmp eq i64 %132, %2
  br i1 %135, label %263, label %137

; <label>:137:                                    ; preds = %134
  br i1 %136, label %139, label %138

; <label>:138:                                    ; preds = %137
  br label %185

; <label>:139:                                    ; preds = %137
  br label %140

; <label>:140:                                    ; preds = %139, %180
  %141 = phi i64 [ %183, %180 ], [ 0, %139 ]
  %142 = phi i8* [ %182, %180 ], [ %0, %139 ]
  %143 = phi float* [ %181, %180 ], [ %4, %139 ]
  br label %144

; <label>:144:                                    ; preds = %144, %140
  %145 = phi i64 [ 0, %140 ], [ %178, %144 ]
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = getelementptr inbounds float, float* %143, i64 %145
  %148 = bitcast i8* %146 to <16 x i8>*
  %149 = load <16 x i8>, <16 x i8>* %148, align 1, !tbaa !2
  %150 = xor <16 x i8> %149, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %151 = shufflevector <16 x i8> %150, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %152 = bitcast <16 x i8> %151 to <8 x i16>
  %153 = shufflevector <8 x i16> %152, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %154 = bitcast <8 x i16> %153 to <4 x i32>
  %155 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %154) #3
  %156 = fmul <4 x float> %155, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %157 = bitcast float* %147 to <4 x float>*
  store <4 x float> %156, <4 x float>* %157, align 1, !tbaa !2
  %158 = getelementptr inbounds float, float* %147, i64 4
  %159 = shufflevector <8 x i16> %152, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %160 = bitcast <8 x i16> %159 to <4 x i32>
  %161 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %160) #3
  %162 = fmul <4 x float> %161, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %163 = bitcast float* %158 to <4 x float>*
  store <4 x float> %162, <4 x float>* %163, align 1, !tbaa !2
  %164 = shufflevector <16 x i8> %150, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %165 = getelementptr inbounds float, float* %147, i64 8
  %166 = bitcast <16 x i8> %164 to <8 x i16>
  %167 = shufflevector <8 x i16> %166, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %168 = bitcast <8 x i16> %167 to <4 x i32>
  %169 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %168) #3
  %170 = fmul <4 x float> %169, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %171 = bitcast float* %165 to <4 x float>*
  store <4 x float> %170, <4 x float>* %171, align 1, !tbaa !2
  %172 = getelementptr inbounds float, float* %147, i64 12
  %173 = shufflevector <8 x i16> %166, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %174 = bitcast <8 x i16> %173 to <4 x i32>
  %175 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %174) #3
  %176 = fmul <4 x float> %175, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %177 = bitcast float* %172 to <4 x float>*
  store <4 x float> %176, <4 x float>* %177, align 1, !tbaa !2
  %178 = add nuw i64 %145, 16
  %179 = icmp ult i64 %178, %2
  br i1 %179, label %144, label %180

; <label>:180:                                    ; preds = %144
  %181 = getelementptr inbounds float, float* %143, i64 %2
  %182 = getelementptr inbounds i8, i8* %142, i64 %1
  %183 = add nuw i64 %141, 1
  %184 = icmp eq i64 %183, %3
  br i1 %184, label %306, label %140

; <label>:185:                                    ; preds = %138, %225
  %186 = phi i64 [ %261, %225 ], [ 0, %138 ]
  %187 = phi i8* [ %260, %225 ], [ %0, %138 ]
  %188 = phi float* [ %228, %225 ], [ %4, %138 ]
  br label %189

; <label>:189:                                    ; preds = %189, %185
  %190 = phi i64 [ 0, %185 ], [ %223, %189 ]
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  %192 = getelementptr inbounds float, float* %188, i64 %190
  %193 = bitcast i8* %191 to <16 x i8>*
  %194 = load <16 x i8>, <16 x i8>* %193, align 1, !tbaa !2
  %195 = xor <16 x i8> %194, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %196 = shufflevector <16 x i8> %195, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %197 = bitcast <16 x i8> %196 to <8 x i16>
  %198 = shufflevector <8 x i16> %197, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %199 = bitcast <8 x i16> %198 to <4 x i32>
  %200 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %199) #3
  %201 = fmul <4 x float> %200, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %202 = bitcast float* %192 to <4 x float>*
  store <4 x float> %201, <4 x float>* %202, align 1, !tbaa !2
  %203 = getelementptr inbounds float, float* %192, i64 4
  %204 = shufflevector <8 x i16> %197, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %205 = bitcast <8 x i16> %204 to <4 x i32>
  %206 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %205) #3
  %207 = fmul <4 x float> %206, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %208 = bitcast float* %203 to <4 x float>*
  store <4 x float> %207, <4 x float>* %208, align 1, !tbaa !2
  %209 = shufflevector <16 x i8> %195, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %210 = getelementptr inbounds float, float* %192, i64 8
  %211 = bitcast <16 x i8> %209 to <8 x i16>
  %212 = shufflevector <8 x i16> %211, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %213 = bitcast <8 x i16> %212 to <4 x i32>
  %214 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %213) #3
  %215 = fmul <4 x float> %214, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %216 = bitcast float* %210 to <4 x float>*
  store <4 x float> %215, <4 x float>* %216, align 1, !tbaa !2
  %217 = getelementptr inbounds float, float* %192, i64 12
  %218 = shufflevector <8 x i16> %211, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %219 = bitcast <8 x i16> %218 to <4 x i32>
  %220 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %219) #3
  %221 = fmul <4 x float> %220, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %222 = bitcast float* %217 to <4 x float>*
  store <4 x float> %221, <4 x float>* %222, align 1, !tbaa !2
  %223 = add nuw i64 %190, 16
  %224 = icmp ult i64 %223, %132
  br i1 %224, label %189, label %225

; <label>:225:                                    ; preds = %189
  %226 = getelementptr inbounds i8, i8* %187, i64 %2
  %227 = getelementptr inbounds i8, i8* %226, i64 -16
  %228 = getelementptr inbounds float, float* %188, i64 %2
  %229 = getelementptr inbounds float, float* %228, i64 -16
  %230 = bitcast i8* %227 to <16 x i8>*
  %231 = load <16 x i8>, <16 x i8>* %230, align 1, !tbaa !2
  %232 = xor <16 x i8> %231, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %233 = shufflevector <16 x i8> %232, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %234 = bitcast <16 x i8> %233 to <8 x i16>
  %235 = shufflevector <8 x i16> %234, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %236 = bitcast <8 x i16> %235 to <4 x i32>
  %237 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %236) #3
  %238 = fmul <4 x float> %237, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %239 = bitcast float* %229 to <4 x float>*
  store <4 x float> %238, <4 x float>* %239, align 1, !tbaa !2
  %240 = getelementptr inbounds float, float* %229, i64 4
  %241 = shufflevector <8 x i16> %234, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %242 = bitcast <8 x i16> %241 to <4 x i32>
  %243 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %242) #3
  %244 = fmul <4 x float> %243, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %245 = bitcast float* %240 to <4 x float>*
  store <4 x float> %244, <4 x float>* %245, align 1, !tbaa !2
  %246 = shufflevector <16 x i8> %232, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %247 = getelementptr inbounds float, float* %229, i64 8
  %248 = bitcast <16 x i8> %246 to <8 x i16>
  %249 = shufflevector <8 x i16> %248, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %250 = bitcast <8 x i16> %249 to <4 x i32>
  %251 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %250) #3
  %252 = fmul <4 x float> %251, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %253 = bitcast float* %247 to <4 x float>*
  store <4 x float> %252, <4 x float>* %253, align 1, !tbaa !2
  %254 = getelementptr inbounds float, float* %229, i64 12
  %255 = shufflevector <8 x i16> %248, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %256 = bitcast <8 x i16> %255 to <4 x i32>
  %257 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %256) #3
  %258 = fmul <4 x float> %257, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %259 = bitcast float* %254 to <4 x float>*
  store <4 x float> %258, <4 x float>* %259, align 1, !tbaa !2
  %260 = getelementptr inbounds i8, i8* %187, i64 %1
  %261 = add nuw i64 %186, 1
  %262 = icmp eq i64 %261, %3
  br i1 %262, label %306, label %185

; <label>:263:                                    ; preds = %134
  br i1 %136, label %306, label %264

; <label>:264:                                    ; preds = %263
  br label %265

; <label>:265:                                    ; preds = %264, %265
  %266 = phi i64 [ %304, %265 ], [ 0, %264 ]
  %267 = phi i8* [ %303, %265 ], [ %0, %264 ]
  %268 = phi float* [ %271, %265 ], [ %4, %264 ]
  %269 = getelementptr inbounds i8, i8* %267, i64 %2
  %270 = getelementptr inbounds i8, i8* %269, i64 -16
  %271 = getelementptr inbounds float, float* %268, i64 %2
  %272 = getelementptr inbounds float, float* %271, i64 -16
  %273 = bitcast i8* %270 to <16 x i8>*
  %274 = load <16 x i8>, <16 x i8>* %273, align 1, !tbaa !2
  %275 = xor <16 x i8> %274, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %276 = shufflevector <16 x i8> %275, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %277 = bitcast <16 x i8> %276 to <8 x i16>
  %278 = shufflevector <8 x i16> %277, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %279 = bitcast <8 x i16> %278 to <4 x i32>
  %280 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %279) #3
  %281 = fmul <4 x float> %280, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %282 = bitcast float* %272 to <4 x float>*
  store <4 x float> %281, <4 x float>* %282, align 1, !tbaa !2
  %283 = getelementptr inbounds float, float* %272, i64 4
  %284 = shufflevector <8 x i16> %277, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %285 = bitcast <8 x i16> %284 to <4 x i32>
  %286 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %285) #3
  %287 = fmul <4 x float> %286, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %288 = bitcast float* %283 to <4 x float>*
  store <4 x float> %287, <4 x float>* %288, align 1, !tbaa !2
  %289 = shufflevector <16 x i8> %275, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %290 = getelementptr inbounds float, float* %272, i64 8
  %291 = bitcast <16 x i8> %289 to <8 x i16>
  %292 = shufflevector <8 x i16> %291, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %293 = bitcast <8 x i16> %292 to <4 x i32>
  %294 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %293) #3
  %295 = fmul <4 x float> %294, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %296 = bitcast float* %290 to <4 x float>*
  store <4 x float> %295, <4 x float>* %296, align 1, !tbaa !2
  %297 = getelementptr inbounds float, float* %272, i64 12
  %298 = shufflevector <8 x i16> %291, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %299 = bitcast <8 x i16> %298 to <4 x i32>
  %300 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %299) #3
  %301 = fmul <4 x float> %300, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %302 = bitcast float* %297 to <4 x float>*
  store <4 x float> %301, <4 x float>* %302, align 1, !tbaa !2
  %303 = getelementptr inbounds i8, i8* %267, i64 %1
  %304 = add nuw i64 %266, 1
  %305 = icmp eq i64 %304, %3
  br i1 %305, label %306, label %265

; <label>:306:                                    ; preds = %225, %180, %265, %123, %263, %131, %80, %77
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf(i8*, i64, i64, i64, float*) local_unnamed_addr #1 comdat {
  %6 = ptrtoint i8* %0 to i64
  %7 = and i64 %6, -16
  %8 = inttoptr i64 %7 to i8*
  %9 = icmp eq i8* %8, %0
  %10 = and i64 %1, -16
  %11 = icmp eq i64 %10, %1
  %12 = and i1 %11, %9
  br i1 %12, label %13, label %126

; <label>:13:                                     ; preds = %5
  %14 = bitcast float* %4 to i8*
  %15 = ptrtoint float* %4 to i64
  %16 = and i64 %15, -16
  %17 = inttoptr i64 %16 to i8*
  %18 = icmp eq i8* %17, %14
  %19 = and i64 %2, -16
  %20 = icmp eq i64 %19, %2
  %21 = and i1 %20, %18
  br i1 %21, label %22, label %126

; <label>:22:                                     ; preds = %13
  %23 = shl i64 %2, 2
  %24 = mul i64 %23, %3
  %25 = icmp ugt i64 %24, 1048575
  %26 = icmp ugt i64 %2, 15
  br i1 %25, label %27, label %77

; <label>:27:                                     ; preds = %22
  br i1 %26, label %29, label %28

; <label>:28:                                     ; preds = %27
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf, i64 0, i64 0)) #5
  unreachable

; <label>:29:                                     ; preds = %27
  %30 = icmp eq i64 %3, 0
  br i1 %30, label %76, label %31

; <label>:31:                                     ; preds = %29
  br label %32

; <label>:32:                                     ; preds = %31, %71
  %33 = phi i64 [ %74, %71 ], [ 0, %31 ]
  %34 = phi i8* [ %72, %71 ], [ %0, %31 ]
  %35 = phi float* [ %73, %71 ], [ %4, %31 ]
  br label %36

; <label>:36:                                     ; preds = %36, %32
  %37 = phi i64 [ 0, %32 ], [ %69, %36 ]
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = getelementptr inbounds float, float* %35, i64 %37
  %40 = bitcast i8* %38 to <16 x i8>*
  %41 = load <16 x i8>, <16 x i8>* %40, align 16, !tbaa !2
  %42 = shufflevector <16 x i8> %41, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %43 = bitcast <16 x i8> %42 to <8 x i16>
  %44 = shufflevector <8 x i16> %43, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %45 = bitcast <8 x i16> %44 to <4 x i32>
  %46 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %45) #3
  %47 = fmul <4 x float> %46, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %48 = bitcast float* %39 to <4 x float>*
  store <4 x float> %47, <4 x float>* %48, align 16, !tbaa !2, !nontemporal !5
  %49 = getelementptr inbounds float, float* %39, i64 4
  %50 = shufflevector <8 x i16> %43, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %51 = bitcast <8 x i16> %50 to <4 x i32>
  %52 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %51) #3
  %53 = fmul <4 x float> %52, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %54 = bitcast float* %49 to <4 x float>*
  store <4 x float> %53, <4 x float>* %54, align 16, !tbaa !2, !nontemporal !5
  %55 = shufflevector <16 x i8> %41, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %56 = getelementptr inbounds float, float* %39, i64 8
  %57 = bitcast <16 x i8> %55 to <8 x i16>
  %58 = shufflevector <8 x i16> %57, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %59 = bitcast <8 x i16> %58 to <4 x i32>
  %60 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %59) #3
  %61 = fmul <4 x float> %60, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %62 = bitcast float* %56 to <4 x float>*
  store <4 x float> %61, <4 x float>* %62, align 16, !tbaa !2, !nontemporal !5
  %63 = getelementptr inbounds float, float* %39, i64 12
  %64 = shufflevector <8 x i16> %57, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %65 = bitcast <8 x i16> %64 to <4 x i32>
  %66 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %65) #3
  %67 = fmul <4 x float> %66, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %68 = bitcast float* %63 to <4 x float>*
  store <4 x float> %67, <4 x float>* %68, align 16, !tbaa !2, !nontemporal !5
  %69 = add nuw i64 %37, 16
  %70 = icmp ult i64 %69, %2
  br i1 %70, label %36, label %71

; <label>:71:                                     ; preds = %36
  %72 = getelementptr inbounds i8, i8* %34, i64 %1
  %73 = getelementptr inbounds float, float* %35, i64 %2
  %74 = add nuw i64 %33, 1
  %75 = icmp eq i64 %74, %3
  br i1 %75, label %76, label %32

; <label>:76:                                     ; preds = %71, %29
  tail call void @llvm.x86.sse2.mfence()
  br label %300

; <label>:77:                                     ; preds = %22
  br i1 %26, label %79, label %78

; <label>:78:                                     ; preds = %77
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb0EEEvPKhmmmPf, i64 0, i64 0)) #5
  unreachable

; <label>:79:                                     ; preds = %77
  %80 = icmp eq i64 %3, 0
  br i1 %80, label %300, label %81

; <label>:81:                                     ; preds = %79
  br label %82

; <label>:82:                                     ; preds = %81, %121
  %83 = phi i64 [ %124, %121 ], [ 0, %81 ]
  %84 = phi i8* [ %122, %121 ], [ %0, %81 ]
  %85 = phi float* [ %123, %121 ], [ %4, %81 ]
  br label %86

; <label>:86:                                     ; preds = %86, %82
  %87 = phi i64 [ 0, %82 ], [ %119, %86 ]
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = getelementptr inbounds float, float* %85, i64 %87
  %90 = bitcast i8* %88 to <16 x i8>*
  %91 = load <16 x i8>, <16 x i8>* %90, align 16, !tbaa !2
  %92 = shufflevector <16 x i8> %91, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %93 = bitcast <16 x i8> %92 to <8 x i16>
  %94 = shufflevector <8 x i16> %93, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %95 = bitcast <8 x i16> %94 to <4 x i32>
  %96 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %95) #3
  %97 = fmul <4 x float> %96, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %98 = bitcast float* %89 to <4 x float>*
  store <4 x float> %97, <4 x float>* %98, align 16, !tbaa !2
  %99 = getelementptr inbounds float, float* %89, i64 4
  %100 = shufflevector <8 x i16> %93, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %101 = bitcast <8 x i16> %100 to <4 x i32>
  %102 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %101) #3
  %103 = fmul <4 x float> %102, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %104 = bitcast float* %99 to <4 x float>*
  store <4 x float> %103, <4 x float>* %104, align 16, !tbaa !2
  %105 = shufflevector <16 x i8> %91, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %106 = getelementptr inbounds float, float* %89, i64 8
  %107 = bitcast <16 x i8> %105 to <8 x i16>
  %108 = shufflevector <8 x i16> %107, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %109 = bitcast <8 x i16> %108 to <4 x i32>
  %110 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %109) #3
  %111 = fmul <4 x float> %110, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %112 = bitcast float* %106 to <4 x float>*
  store <4 x float> %111, <4 x float>* %112, align 16, !tbaa !2
  %113 = getelementptr inbounds float, float* %89, i64 12
  %114 = shufflevector <8 x i16> %107, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %115 = bitcast <8 x i16> %114 to <4 x i32>
  %116 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %115) #3
  %117 = fmul <4 x float> %116, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %118 = bitcast float* %113 to <4 x float>*
  store <4 x float> %117, <4 x float>* %118, align 16, !tbaa !2
  %119 = add nuw i64 %87, 16
  %120 = icmp ult i64 %119, %2
  br i1 %120, label %86, label %121

; <label>:121:                                    ; preds = %86
  %122 = getelementptr inbounds i8, i8* %84, i64 %1
  %123 = getelementptr inbounds float, float* %85, i64 %2
  %124 = add nuw i64 %83, 1
  %125 = icmp eq i64 %124, %3
  br i1 %125, label %300, label %82

; <label>:126:                                    ; preds = %13, %5
  %127 = icmp ugt i64 %2, 15
  br i1 %127, label %129, label %128

; <label>:128:                                    ; preds = %126
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf, i64 0, i64 0)) #5
  unreachable

; <label>:129:                                    ; preds = %126
  %130 = and i64 %2, -16
  %131 = icmp eq i64 %3, 0
  br i1 %131, label %300, label %132

; <label>:132:                                    ; preds = %129
  %133 = icmp eq i64 %130, 0
  %134 = icmp eq i64 %130, %2
  br i1 %133, label %258, label %135

; <label>:135:                                    ; preds = %132
  br i1 %134, label %137, label %136

; <label>:136:                                    ; preds = %135
  br label %182

; <label>:137:                                    ; preds = %135
  br label %138

; <label>:138:                                    ; preds = %137, %177
  %139 = phi i64 [ %180, %177 ], [ 0, %137 ]
  %140 = phi i8* [ %179, %177 ], [ %0, %137 ]
  %141 = phi float* [ %178, %177 ], [ %4, %137 ]
  br label %142

; <label>:142:                                    ; preds = %142, %138
  %143 = phi i64 [ 0, %138 ], [ %175, %142 ]
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = getelementptr inbounds float, float* %141, i64 %143
  %146 = bitcast i8* %144 to <16 x i8>*
  %147 = load <16 x i8>, <16 x i8>* %146, align 1, !tbaa !2
  %148 = shufflevector <16 x i8> %147, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %149 = bitcast <16 x i8> %148 to <8 x i16>
  %150 = shufflevector <8 x i16> %149, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %151 = bitcast <8 x i16> %150 to <4 x i32>
  %152 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %151) #3
  %153 = fmul <4 x float> %152, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %154 = bitcast float* %145 to <4 x float>*
  store <4 x float> %153, <4 x float>* %154, align 1, !tbaa !2
  %155 = getelementptr inbounds float, float* %145, i64 4
  %156 = shufflevector <8 x i16> %149, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %157 = bitcast <8 x i16> %156 to <4 x i32>
  %158 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %157) #3
  %159 = fmul <4 x float> %158, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %160 = bitcast float* %155 to <4 x float>*
  store <4 x float> %159, <4 x float>* %160, align 1, !tbaa !2
  %161 = shufflevector <16 x i8> %147, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %162 = getelementptr inbounds float, float* %145, i64 8
  %163 = bitcast <16 x i8> %161 to <8 x i16>
  %164 = shufflevector <8 x i16> %163, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %165 = bitcast <8 x i16> %164 to <4 x i32>
  %166 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %165) #3
  %167 = fmul <4 x float> %166, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %168 = bitcast float* %162 to <4 x float>*
  store <4 x float> %167, <4 x float>* %168, align 1, !tbaa !2
  %169 = getelementptr inbounds float, float* %145, i64 12
  %170 = shufflevector <8 x i16> %163, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %171 = bitcast <8 x i16> %170 to <4 x i32>
  %172 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %171) #3
  %173 = fmul <4 x float> %172, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %174 = bitcast float* %169 to <4 x float>*
  store <4 x float> %173, <4 x float>* %174, align 1, !tbaa !2
  %175 = add nuw i64 %143, 16
  %176 = icmp ult i64 %175, %2
  br i1 %176, label %142, label %177

; <label>:177:                                    ; preds = %142
  %178 = getelementptr inbounds float, float* %141, i64 %2
  %179 = getelementptr inbounds i8, i8* %140, i64 %1
  %180 = add nuw i64 %139, 1
  %181 = icmp eq i64 %180, %3
  br i1 %181, label %300, label %138

; <label>:182:                                    ; preds = %136, %221
  %183 = phi i64 [ %256, %221 ], [ 0, %136 ]
  %184 = phi i8* [ %255, %221 ], [ %0, %136 ]
  %185 = phi float* [ %224, %221 ], [ %4, %136 ]
  br label %186

; <label>:186:                                    ; preds = %186, %182
  %187 = phi i64 [ 0, %182 ], [ %219, %186 ]
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = getelementptr inbounds float, float* %185, i64 %187
  %190 = bitcast i8* %188 to <16 x i8>*
  %191 = load <16 x i8>, <16 x i8>* %190, align 1, !tbaa !2
  %192 = shufflevector <16 x i8> %191, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %193 = bitcast <16 x i8> %192 to <8 x i16>
  %194 = shufflevector <8 x i16> %193, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %195 = bitcast <8 x i16> %194 to <4 x i32>
  %196 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %195) #3
  %197 = fmul <4 x float> %196, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %198 = bitcast float* %189 to <4 x float>*
  store <4 x float> %197, <4 x float>* %198, align 1, !tbaa !2
  %199 = getelementptr inbounds float, float* %189, i64 4
  %200 = shufflevector <8 x i16> %193, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %201 = bitcast <8 x i16> %200 to <4 x i32>
  %202 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %201) #3
  %203 = fmul <4 x float> %202, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %204 = bitcast float* %199 to <4 x float>*
  store <4 x float> %203, <4 x float>* %204, align 1, !tbaa !2
  %205 = shufflevector <16 x i8> %191, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %206 = getelementptr inbounds float, float* %189, i64 8
  %207 = bitcast <16 x i8> %205 to <8 x i16>
  %208 = shufflevector <8 x i16> %207, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %209 = bitcast <8 x i16> %208 to <4 x i32>
  %210 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %209) #3
  %211 = fmul <4 x float> %210, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %212 = bitcast float* %206 to <4 x float>*
  store <4 x float> %211, <4 x float>* %212, align 1, !tbaa !2
  %213 = getelementptr inbounds float, float* %189, i64 12
  %214 = shufflevector <8 x i16> %207, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %215 = bitcast <8 x i16> %214 to <4 x i32>
  %216 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %215) #3
  %217 = fmul <4 x float> %216, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %218 = bitcast float* %213 to <4 x float>*
  store <4 x float> %217, <4 x float>* %218, align 1, !tbaa !2
  %219 = add nuw i64 %187, 16
  %220 = icmp ult i64 %219, %130
  br i1 %220, label %186, label %221

; <label>:221:                                    ; preds = %186
  %222 = getelementptr inbounds i8, i8* %184, i64 %2
  %223 = getelementptr inbounds i8, i8* %222, i64 -16
  %224 = getelementptr inbounds float, float* %185, i64 %2
  %225 = getelementptr inbounds float, float* %224, i64 -16
  %226 = bitcast i8* %223 to <16 x i8>*
  %227 = load <16 x i8>, <16 x i8>* %226, align 1, !tbaa !2
  %228 = shufflevector <16 x i8> %227, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %229 = bitcast <16 x i8> %228 to <8 x i16>
  %230 = shufflevector <8 x i16> %229, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %231 = bitcast <8 x i16> %230 to <4 x i32>
  %232 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %231) #3
  %233 = fmul <4 x float> %232, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %234 = bitcast float* %225 to <4 x float>*
  store <4 x float> %233, <4 x float>* %234, align 1, !tbaa !2
  %235 = getelementptr inbounds float, float* %225, i64 4
  %236 = shufflevector <8 x i16> %229, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %237 = bitcast <8 x i16> %236 to <4 x i32>
  %238 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %237) #3
  %239 = fmul <4 x float> %238, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %240 = bitcast float* %235 to <4 x float>*
  store <4 x float> %239, <4 x float>* %240, align 1, !tbaa !2
  %241 = shufflevector <16 x i8> %227, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %242 = getelementptr inbounds float, float* %225, i64 8
  %243 = bitcast <16 x i8> %241 to <8 x i16>
  %244 = shufflevector <8 x i16> %243, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %245 = bitcast <8 x i16> %244 to <4 x i32>
  %246 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %245) #3
  %247 = fmul <4 x float> %246, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %248 = bitcast float* %242 to <4 x float>*
  store <4 x float> %247, <4 x float>* %248, align 1, !tbaa !2
  %249 = getelementptr inbounds float, float* %225, i64 12
  %250 = shufflevector <8 x i16> %243, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %251 = bitcast <8 x i16> %250 to <4 x i32>
  %252 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %251) #3
  %253 = fmul <4 x float> %252, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %254 = bitcast float* %249 to <4 x float>*
  store <4 x float> %253, <4 x float>* %254, align 1, !tbaa !2
  %255 = getelementptr inbounds i8, i8* %184, i64 %1
  %256 = add nuw i64 %183, 1
  %257 = icmp eq i64 %256, %3
  br i1 %257, label %300, label %182

; <label>:258:                                    ; preds = %132
  br i1 %134, label %300, label %259

; <label>:259:                                    ; preds = %258
  br label %260

; <label>:260:                                    ; preds = %259, %260
  %261 = phi i64 [ %298, %260 ], [ 0, %259 ]
  %262 = phi i8* [ %297, %260 ], [ %0, %259 ]
  %263 = phi float* [ %266, %260 ], [ %4, %259 ]
  %264 = getelementptr inbounds i8, i8* %262, i64 %2
  %265 = getelementptr inbounds i8, i8* %264, i64 -16
  %266 = getelementptr inbounds float, float* %263, i64 %2
  %267 = getelementptr inbounds float, float* %266, i64 -16
  %268 = bitcast i8* %265 to <16 x i8>*
  %269 = load <16 x i8>, <16 x i8>* %268, align 1, !tbaa !2
  %270 = shufflevector <16 x i8> %269, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %271 = bitcast <16 x i8> %270 to <8 x i16>
  %272 = shufflevector <8 x i16> %271, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %273 = bitcast <8 x i16> %272 to <4 x i32>
  %274 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %273) #3
  %275 = fmul <4 x float> %274, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %276 = bitcast float* %267 to <4 x float>*
  store <4 x float> %275, <4 x float>* %276, align 1, !tbaa !2
  %277 = getelementptr inbounds float, float* %267, i64 4
  %278 = shufflevector <8 x i16> %271, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %279 = bitcast <8 x i16> %278 to <4 x i32>
  %280 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %279) #3
  %281 = fmul <4 x float> %280, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %282 = bitcast float* %277 to <4 x float>*
  store <4 x float> %281, <4 x float>* %282, align 1, !tbaa !2
  %283 = shufflevector <16 x i8> %269, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %284 = getelementptr inbounds float, float* %267, i64 8
  %285 = bitcast <16 x i8> %283 to <8 x i16>
  %286 = shufflevector <8 x i16> %285, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %287 = bitcast <8 x i16> %286 to <4 x i32>
  %288 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %287) #3
  %289 = fmul <4 x float> %288, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %290 = bitcast float* %284 to <4 x float>*
  store <4 x float> %289, <4 x float>* %290, align 1, !tbaa !2
  %291 = getelementptr inbounds float, float* %267, i64 12
  %292 = shufflevector <8 x i16> %285, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %293 = bitcast <8 x i16> %292 to <4 x i32>
  %294 = tail call <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32> %293) #3
  %295 = fmul <4 x float> %294, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %296 = bitcast float* %291 to <4 x float>*
  store <4 x float> %295, <4 x float>* %296, align 1, !tbaa !2
  %297 = getelementptr inbounds i8, i8* %262, i64 %1
  %298 = add nuw i64 %261, 1
  %299 = icmp eq i64 %298, %3
  br i1 %299, label %300, label %260

; <label>:300:                                    ; preds = %221, %177, %260, %121, %258, %129, %79, %76
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.mfence() #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32>) #4

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-svn326550-1~exp1~20180305180131.61 (branches/release_60)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{i32 1}
