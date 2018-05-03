; ModuleID = 'SimdSse2Neural/SimdSse2Neural_O3.ll'
source_filename = "SimdSse2Neural/SimdSse2Neural.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4Simd4Sse213NeuralConvertILb1EEEvPKhmmmPf = comdat any

$_ZN4Simd4Sse213NeuralConvertILb0EEEvPKhmmmPf = comdat any

@.str = private unnamed_addr constant [11 x i8] c"width >= A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"SimdSse2Neural/SimdSse2Neural.cpp\00", align 1
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
  br i1 %12, label %13, label %248

; <label>:13:                                     ; preds = %5
  %14 = bitcast float* %4 to i8*
  %15 = ptrtoint float* %4 to i64
  %16 = and i64 %15, -16
  %17 = inttoptr i64 %16 to i8*
  %18 = icmp eq i8* %17, %14
  %19 = and i64 %2, -16
  %20 = icmp eq i64 %19, %2
  %21 = and i1 %20, %18
  br i1 %21, label %22, label %248

; <label>:22:                                     ; preds = %13
  %23 = shl i64 %2, 2
  %24 = mul i64 %23, %3
  %25 = icmp ugt i64 %24, 1048575
  %26 = icmp ugt i64 %2, 15
  br i1 %25, label %27, label %138

; <label>:27:                                     ; preds = %22
  br i1 %26, label %29, label %28

; <label>:28:                                     ; preds = %27
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb1EEEvPKhmmmPf, i64 0, i64 0)) #6
  unreachable

; <label>:29:                                     ; preds = %27
  %30 = icmp eq i64 %3, 0
  br i1 %30, label %137, label %31

; <label>:31:                                     ; preds = %29
  br label %32

; <label>:32:                                     ; preds = %132, %31
  %33 = phi i64 [ %135, %132 ], [ 0, %31 ]
  %34 = phi i8* [ %133, %132 ], [ %0, %31 ]
  %35 = phi float* [ %134, %132 ], [ %4, %31 ]
  br label %36

; <label>:36:                                     ; preds = %36, %32
  %37 = phi i64 [ 0, %32 ], [ %130, %36 ]
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = getelementptr inbounds float, float* %35, i64 %37
  %40 = bitcast i8* %38 to <16 x i8>*
  %41 = load <16 x i8>, <16 x i8>* %40, align 16, !tbaa !2
  %42 = xor <16 x i8> %41, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %43 = shufflevector <16 x i8> %42, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %44 = bitcast <16 x i8> %43 to <8 x i16>
  %45 = shufflevector <8 x i16> %44, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %46 = bitcast float* %39 to <4 x float>*
  %47 = getelementptr inbounds float, float* %39, i64 4
  %48 = shufflevector <8 x i16> %44, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %49 = extractelement <8 x i16> %45, i32 0
  %50 = insertelement <16 x i16> undef, i16 %49, i32 0
  %51 = extractelement <8 x i16> %45, i32 1
  %52 = insertelement <16 x i16> %50, i16 %51, i32 1
  %53 = extractelement <8 x i16> %45, i32 2
  %54 = insertelement <16 x i16> %52, i16 %53, i32 2
  %55 = extractelement <8 x i16> %45, i32 3
  %56 = insertelement <16 x i16> %54, i16 %55, i32 3
  %57 = extractelement <8 x i16> %45, i32 4
  %58 = insertelement <16 x i16> %56, i16 %57, i32 4
  %59 = extractelement <8 x i16> %45, i32 5
  %60 = insertelement <16 x i16> %58, i16 %59, i32 5
  %61 = extractelement <8 x i16> %45, i32 6
  %62 = insertelement <16 x i16> %60, i16 %61, i32 6
  %63 = extractelement <8 x i16> %45, i32 7
  %64 = insertelement <16 x i16> %62, i16 %63, i32 7
  %65 = extractelement <8 x i16> %48, i32 0
  %66 = insertelement <16 x i16> %64, i16 %65, i32 8
  %67 = extractelement <8 x i16> %48, i32 1
  %68 = insertelement <16 x i16> %66, i16 %67, i32 9
  %69 = extractelement <8 x i16> %48, i32 2
  %70 = insertelement <16 x i16> %68, i16 %69, i32 10
  %71 = extractelement <8 x i16> %48, i32 3
  %72 = insertelement <16 x i16> %70, i16 %71, i32 11
  %73 = extractelement <8 x i16> %48, i32 4
  %74 = insertelement <16 x i16> %72, i16 %73, i32 12
  %75 = extractelement <8 x i16> %48, i32 5
  %76 = insertelement <16 x i16> %74, i16 %75, i32 13
  %77 = extractelement <8 x i16> %48, i32 6
  %78 = insertelement <16 x i16> %76, i16 %77, i32 14
  %79 = extractelement <8 x i16> %48, i32 7
  %80 = insertelement <16 x i16> %78, i16 %79, i32 15
  %81 = bitcast <16 x i16> %80 to <8 x i32>
  %82 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %81)
  %83 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %82
  %84 = bitcast float* %47 to <4 x float>*
  %85 = bitcast <4 x float>* %46 to <8 x float>*
  store <8 x float> %83, <8 x float>* %85, align 16, !tbaa !2, !nontemporal !5
  %86 = shufflevector <16 x i8> %42, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %87 = getelementptr inbounds float, float* %39, i64 8
  %88 = bitcast <16 x i8> %86 to <8 x i16>
  %89 = shufflevector <8 x i16> %88, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %90 = bitcast float* %87 to <4 x float>*
  %91 = getelementptr inbounds float, float* %39, i64 12
  %92 = shufflevector <8 x i16> %88, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %93 = extractelement <8 x i16> %89, i32 0
  %94 = insertelement <16 x i16> undef, i16 %93, i32 0
  %95 = extractelement <8 x i16> %89, i32 1
  %96 = insertelement <16 x i16> %94, i16 %95, i32 1
  %97 = extractelement <8 x i16> %89, i32 2
  %98 = insertelement <16 x i16> %96, i16 %97, i32 2
  %99 = extractelement <8 x i16> %89, i32 3
  %100 = insertelement <16 x i16> %98, i16 %99, i32 3
  %101 = extractelement <8 x i16> %89, i32 4
  %102 = insertelement <16 x i16> %100, i16 %101, i32 4
  %103 = extractelement <8 x i16> %89, i32 5
  %104 = insertelement <16 x i16> %102, i16 %103, i32 5
  %105 = extractelement <8 x i16> %89, i32 6
  %106 = insertelement <16 x i16> %104, i16 %105, i32 6
  %107 = extractelement <8 x i16> %89, i32 7
  %108 = insertelement <16 x i16> %106, i16 %107, i32 7
  %109 = extractelement <8 x i16> %92, i32 0
  %110 = insertelement <16 x i16> %108, i16 %109, i32 8
  %111 = extractelement <8 x i16> %92, i32 1
  %112 = insertelement <16 x i16> %110, i16 %111, i32 9
  %113 = extractelement <8 x i16> %92, i32 2
  %114 = insertelement <16 x i16> %112, i16 %113, i32 10
  %115 = extractelement <8 x i16> %92, i32 3
  %116 = insertelement <16 x i16> %114, i16 %115, i32 11
  %117 = extractelement <8 x i16> %92, i32 4
  %118 = insertelement <16 x i16> %116, i16 %117, i32 12
  %119 = extractelement <8 x i16> %92, i32 5
  %120 = insertelement <16 x i16> %118, i16 %119, i32 13
  %121 = extractelement <8 x i16> %92, i32 6
  %122 = insertelement <16 x i16> %120, i16 %121, i32 14
  %123 = extractelement <8 x i16> %92, i32 7
  %124 = insertelement <16 x i16> %122, i16 %123, i32 15
  %125 = bitcast <16 x i16> %124 to <8 x i32>
  %126 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %125)
  %127 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %126
  %128 = bitcast float* %91 to <4 x float>*
  %129 = bitcast <4 x float>* %90 to <8 x float>*
  store <8 x float> %127, <8 x float>* %129, align 16, !tbaa !2, !nontemporal !5
  %130 = add nuw i64 %37, 16
  %131 = icmp ult i64 %130, %2
  br i1 %131, label %36, label %132

; <label>:132:                                    ; preds = %36
  %133 = getelementptr inbounds i8, i8* %34, i64 %1
  %134 = getelementptr inbounds float, float* %35, i64 %2
  %135 = add nuw i64 %33, 1
  %136 = icmp eq i64 %135, %3
  br i1 %136, label %137, label %32

; <label>:137:                                    ; preds = %132, %29
  tail call void @llvm.x86.sse2.mfence()
  br label %666

; <label>:138:                                    ; preds = %22
  br i1 %26, label %140, label %139

; <label>:139:                                    ; preds = %138
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb1ELb0EEEvPKhmmmPf, i64 0, i64 0)) #6
  unreachable

; <label>:140:                                    ; preds = %138
  %141 = icmp eq i64 %3, 0
  br i1 %141, label %666, label %142

; <label>:142:                                    ; preds = %140
  br label %143

; <label>:143:                                    ; preds = %243, %142
  %144 = phi i64 [ %246, %243 ], [ 0, %142 ]
  %145 = phi i8* [ %244, %243 ], [ %0, %142 ]
  %146 = phi float* [ %245, %243 ], [ %4, %142 ]
  br label %147

; <label>:147:                                    ; preds = %147, %143
  %148 = phi i64 [ 0, %143 ], [ %241, %147 ]
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = getelementptr inbounds float, float* %146, i64 %148
  %151 = bitcast i8* %149 to <16 x i8>*
  %152 = load <16 x i8>, <16 x i8>* %151, align 16, !tbaa !2
  %153 = xor <16 x i8> %152, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %154 = shufflevector <16 x i8> %153, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %155 = bitcast <16 x i8> %154 to <8 x i16>
  %156 = shufflevector <8 x i16> %155, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %157 = bitcast float* %150 to <4 x float>*
  %158 = getelementptr inbounds float, float* %150, i64 4
  %159 = shufflevector <8 x i16> %155, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %160 = extractelement <8 x i16> %156, i32 0
  %161 = insertelement <16 x i16> undef, i16 %160, i32 0
  %162 = extractelement <8 x i16> %156, i32 1
  %163 = insertelement <16 x i16> %161, i16 %162, i32 1
  %164 = extractelement <8 x i16> %156, i32 2
  %165 = insertelement <16 x i16> %163, i16 %164, i32 2
  %166 = extractelement <8 x i16> %156, i32 3
  %167 = insertelement <16 x i16> %165, i16 %166, i32 3
  %168 = extractelement <8 x i16> %156, i32 4
  %169 = insertelement <16 x i16> %167, i16 %168, i32 4
  %170 = extractelement <8 x i16> %156, i32 5
  %171 = insertelement <16 x i16> %169, i16 %170, i32 5
  %172 = extractelement <8 x i16> %156, i32 6
  %173 = insertelement <16 x i16> %171, i16 %172, i32 6
  %174 = extractelement <8 x i16> %156, i32 7
  %175 = insertelement <16 x i16> %173, i16 %174, i32 7
  %176 = extractelement <8 x i16> %159, i32 0
  %177 = insertelement <16 x i16> %175, i16 %176, i32 8
  %178 = extractelement <8 x i16> %159, i32 1
  %179 = insertelement <16 x i16> %177, i16 %178, i32 9
  %180 = extractelement <8 x i16> %159, i32 2
  %181 = insertelement <16 x i16> %179, i16 %180, i32 10
  %182 = extractelement <8 x i16> %159, i32 3
  %183 = insertelement <16 x i16> %181, i16 %182, i32 11
  %184 = extractelement <8 x i16> %159, i32 4
  %185 = insertelement <16 x i16> %183, i16 %184, i32 12
  %186 = extractelement <8 x i16> %159, i32 5
  %187 = insertelement <16 x i16> %185, i16 %186, i32 13
  %188 = extractelement <8 x i16> %159, i32 6
  %189 = insertelement <16 x i16> %187, i16 %188, i32 14
  %190 = extractelement <8 x i16> %159, i32 7
  %191 = insertelement <16 x i16> %189, i16 %190, i32 15
  %192 = bitcast <16 x i16> %191 to <8 x i32>
  %193 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %192)
  %194 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %193
  %195 = bitcast float* %158 to <4 x float>*
  %196 = bitcast <4 x float>* %157 to <8 x float>*
  store <8 x float> %194, <8 x float>* %196, align 16, !tbaa !2
  %197 = shufflevector <16 x i8> %153, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %198 = getelementptr inbounds float, float* %150, i64 8
  %199 = bitcast <16 x i8> %197 to <8 x i16>
  %200 = shufflevector <8 x i16> %199, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %201 = bitcast float* %198 to <4 x float>*
  %202 = getelementptr inbounds float, float* %150, i64 12
  %203 = shufflevector <8 x i16> %199, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %204 = extractelement <8 x i16> %200, i32 0
  %205 = insertelement <16 x i16> undef, i16 %204, i32 0
  %206 = extractelement <8 x i16> %200, i32 1
  %207 = insertelement <16 x i16> %205, i16 %206, i32 1
  %208 = extractelement <8 x i16> %200, i32 2
  %209 = insertelement <16 x i16> %207, i16 %208, i32 2
  %210 = extractelement <8 x i16> %200, i32 3
  %211 = insertelement <16 x i16> %209, i16 %210, i32 3
  %212 = extractelement <8 x i16> %200, i32 4
  %213 = insertelement <16 x i16> %211, i16 %212, i32 4
  %214 = extractelement <8 x i16> %200, i32 5
  %215 = insertelement <16 x i16> %213, i16 %214, i32 5
  %216 = extractelement <8 x i16> %200, i32 6
  %217 = insertelement <16 x i16> %215, i16 %216, i32 6
  %218 = extractelement <8 x i16> %200, i32 7
  %219 = insertelement <16 x i16> %217, i16 %218, i32 7
  %220 = extractelement <8 x i16> %203, i32 0
  %221 = insertelement <16 x i16> %219, i16 %220, i32 8
  %222 = extractelement <8 x i16> %203, i32 1
  %223 = insertelement <16 x i16> %221, i16 %222, i32 9
  %224 = extractelement <8 x i16> %203, i32 2
  %225 = insertelement <16 x i16> %223, i16 %224, i32 10
  %226 = extractelement <8 x i16> %203, i32 3
  %227 = insertelement <16 x i16> %225, i16 %226, i32 11
  %228 = extractelement <8 x i16> %203, i32 4
  %229 = insertelement <16 x i16> %227, i16 %228, i32 12
  %230 = extractelement <8 x i16> %203, i32 5
  %231 = insertelement <16 x i16> %229, i16 %230, i32 13
  %232 = extractelement <8 x i16> %203, i32 6
  %233 = insertelement <16 x i16> %231, i16 %232, i32 14
  %234 = extractelement <8 x i16> %203, i32 7
  %235 = insertelement <16 x i16> %233, i16 %234, i32 15
  %236 = bitcast <16 x i16> %235 to <8 x i32>
  %237 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %236)
  %238 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %237
  %239 = bitcast float* %202 to <4 x float>*
  %240 = bitcast <4 x float>* %201 to <8 x float>*
  store <8 x float> %238, <8 x float>* %240, align 16, !tbaa !2
  %241 = add nuw i64 %148, 16
  %242 = icmp ult i64 %241, %2
  br i1 %242, label %147, label %243

; <label>:243:                                    ; preds = %147
  %244 = getelementptr inbounds i8, i8* %145, i64 %1
  %245 = getelementptr inbounds float, float* %146, i64 %2
  %246 = add nuw i64 %144, 1
  %247 = icmp eq i64 %246, %3
  br i1 %247, label %666, label %143

; <label>:248:                                    ; preds = %13, %5
  %249 = icmp ugt i64 %2, 15
  br i1 %249, label %251, label %250

; <label>:250:                                    ; preds = %248
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb1ELb0ELb0EEEvPKhmmmPf, i64 0, i64 0)) #6
  unreachable

; <label>:251:                                    ; preds = %248
  %252 = and i64 %2, -16
  %253 = icmp eq i64 %3, 0
  br i1 %253, label %666, label %254

; <label>:254:                                    ; preds = %251
  %255 = icmp eq i64 %252, 0
  %256 = icmp eq i64 %252, %2
  br i1 %255, label %563, label %257

; <label>:257:                                    ; preds = %254
  br i1 %256, label %259, label %258

; <label>:258:                                    ; preds = %257
  br label %365

; <label>:259:                                    ; preds = %257
  br label %260

; <label>:260:                                    ; preds = %360, %259
  %261 = phi i64 [ %363, %360 ], [ 0, %259 ]
  %262 = phi i8* [ %362, %360 ], [ %0, %259 ]
  %263 = phi float* [ %361, %360 ], [ %4, %259 ]
  br label %264

; <label>:264:                                    ; preds = %264, %260
  %265 = phi i64 [ 0, %260 ], [ %358, %264 ]
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = getelementptr inbounds float, float* %263, i64 %265
  %268 = bitcast i8* %266 to <16 x i8>*
  %269 = load <16 x i8>, <16 x i8>* %268, align 1, !tbaa !2
  %270 = xor <16 x i8> %269, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %271 = shufflevector <16 x i8> %270, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %272 = bitcast <16 x i8> %271 to <8 x i16>
  %273 = shufflevector <8 x i16> %272, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %274 = bitcast float* %267 to <4 x float>*
  %275 = getelementptr inbounds float, float* %267, i64 4
  %276 = shufflevector <8 x i16> %272, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %277 = extractelement <8 x i16> %273, i32 0
  %278 = insertelement <16 x i16> undef, i16 %277, i32 0
  %279 = extractelement <8 x i16> %273, i32 1
  %280 = insertelement <16 x i16> %278, i16 %279, i32 1
  %281 = extractelement <8 x i16> %273, i32 2
  %282 = insertelement <16 x i16> %280, i16 %281, i32 2
  %283 = extractelement <8 x i16> %273, i32 3
  %284 = insertelement <16 x i16> %282, i16 %283, i32 3
  %285 = extractelement <8 x i16> %273, i32 4
  %286 = insertelement <16 x i16> %284, i16 %285, i32 4
  %287 = extractelement <8 x i16> %273, i32 5
  %288 = insertelement <16 x i16> %286, i16 %287, i32 5
  %289 = extractelement <8 x i16> %273, i32 6
  %290 = insertelement <16 x i16> %288, i16 %289, i32 6
  %291 = extractelement <8 x i16> %273, i32 7
  %292 = insertelement <16 x i16> %290, i16 %291, i32 7
  %293 = extractelement <8 x i16> %276, i32 0
  %294 = insertelement <16 x i16> %292, i16 %293, i32 8
  %295 = extractelement <8 x i16> %276, i32 1
  %296 = insertelement <16 x i16> %294, i16 %295, i32 9
  %297 = extractelement <8 x i16> %276, i32 2
  %298 = insertelement <16 x i16> %296, i16 %297, i32 10
  %299 = extractelement <8 x i16> %276, i32 3
  %300 = insertelement <16 x i16> %298, i16 %299, i32 11
  %301 = extractelement <8 x i16> %276, i32 4
  %302 = insertelement <16 x i16> %300, i16 %301, i32 12
  %303 = extractelement <8 x i16> %276, i32 5
  %304 = insertelement <16 x i16> %302, i16 %303, i32 13
  %305 = extractelement <8 x i16> %276, i32 6
  %306 = insertelement <16 x i16> %304, i16 %305, i32 14
  %307 = extractelement <8 x i16> %276, i32 7
  %308 = insertelement <16 x i16> %306, i16 %307, i32 15
  %309 = bitcast <16 x i16> %308 to <8 x i32>
  %310 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %309)
  %311 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %310
  %312 = bitcast float* %275 to <4 x float>*
  %313 = bitcast <4 x float>* %274 to <8 x float>*
  store <8 x float> %311, <8 x float>* %313, align 1, !tbaa !2
  %314 = shufflevector <16 x i8> %270, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %315 = getelementptr inbounds float, float* %267, i64 8
  %316 = bitcast <16 x i8> %314 to <8 x i16>
  %317 = shufflevector <8 x i16> %316, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %318 = bitcast float* %315 to <4 x float>*
  %319 = getelementptr inbounds float, float* %267, i64 12
  %320 = shufflevector <8 x i16> %316, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %321 = extractelement <8 x i16> %317, i32 0
  %322 = insertelement <16 x i16> undef, i16 %321, i32 0
  %323 = extractelement <8 x i16> %317, i32 1
  %324 = insertelement <16 x i16> %322, i16 %323, i32 1
  %325 = extractelement <8 x i16> %317, i32 2
  %326 = insertelement <16 x i16> %324, i16 %325, i32 2
  %327 = extractelement <8 x i16> %317, i32 3
  %328 = insertelement <16 x i16> %326, i16 %327, i32 3
  %329 = extractelement <8 x i16> %317, i32 4
  %330 = insertelement <16 x i16> %328, i16 %329, i32 4
  %331 = extractelement <8 x i16> %317, i32 5
  %332 = insertelement <16 x i16> %330, i16 %331, i32 5
  %333 = extractelement <8 x i16> %317, i32 6
  %334 = insertelement <16 x i16> %332, i16 %333, i32 6
  %335 = extractelement <8 x i16> %317, i32 7
  %336 = insertelement <16 x i16> %334, i16 %335, i32 7
  %337 = extractelement <8 x i16> %320, i32 0
  %338 = insertelement <16 x i16> %336, i16 %337, i32 8
  %339 = extractelement <8 x i16> %320, i32 1
  %340 = insertelement <16 x i16> %338, i16 %339, i32 9
  %341 = extractelement <8 x i16> %320, i32 2
  %342 = insertelement <16 x i16> %340, i16 %341, i32 10
  %343 = extractelement <8 x i16> %320, i32 3
  %344 = insertelement <16 x i16> %342, i16 %343, i32 11
  %345 = extractelement <8 x i16> %320, i32 4
  %346 = insertelement <16 x i16> %344, i16 %345, i32 12
  %347 = extractelement <8 x i16> %320, i32 5
  %348 = insertelement <16 x i16> %346, i16 %347, i32 13
  %349 = extractelement <8 x i16> %320, i32 6
  %350 = insertelement <16 x i16> %348, i16 %349, i32 14
  %351 = extractelement <8 x i16> %320, i32 7
  %352 = insertelement <16 x i16> %350, i16 %351, i32 15
  %353 = bitcast <16 x i16> %352 to <8 x i32>
  %354 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %353)
  %355 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %354
  %356 = bitcast float* %319 to <4 x float>*
  %357 = bitcast <4 x float>* %318 to <8 x float>*
  store <8 x float> %355, <8 x float>* %357, align 1, !tbaa !2
  %358 = add nuw i64 %265, 16
  %359 = icmp ult i64 %358, %2
  br i1 %359, label %264, label %360

; <label>:360:                                    ; preds = %264
  %361 = getelementptr inbounds float, float* %263, i64 %2
  %362 = getelementptr inbounds i8, i8* %262, i64 %1
  %363 = add nuw i64 %261, 1
  %364 = icmp eq i64 %363, %3
  br i1 %364, label %666, label %260

; <label>:365:                                    ; preds = %465, %258
  %366 = phi i64 [ %561, %465 ], [ 0, %258 ]
  %367 = phi i8* [ %560, %465 ], [ %0, %258 ]
  %368 = phi float* [ %468, %465 ], [ %4, %258 ]
  br label %369

; <label>:369:                                    ; preds = %369, %365
  %370 = phi i64 [ 0, %365 ], [ %463, %369 ]
  %371 = getelementptr inbounds i8, i8* %367, i64 %370
  %372 = getelementptr inbounds float, float* %368, i64 %370
  %373 = bitcast i8* %371 to <16 x i8>*
  %374 = load <16 x i8>, <16 x i8>* %373, align 1, !tbaa !2
  %375 = xor <16 x i8> %374, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %376 = shufflevector <16 x i8> %375, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %377 = bitcast <16 x i8> %376 to <8 x i16>
  %378 = shufflevector <8 x i16> %377, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %379 = bitcast float* %372 to <4 x float>*
  %380 = getelementptr inbounds float, float* %372, i64 4
  %381 = shufflevector <8 x i16> %377, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %382 = extractelement <8 x i16> %378, i32 0
  %383 = insertelement <16 x i16> undef, i16 %382, i32 0
  %384 = extractelement <8 x i16> %378, i32 1
  %385 = insertelement <16 x i16> %383, i16 %384, i32 1
  %386 = extractelement <8 x i16> %378, i32 2
  %387 = insertelement <16 x i16> %385, i16 %386, i32 2
  %388 = extractelement <8 x i16> %378, i32 3
  %389 = insertelement <16 x i16> %387, i16 %388, i32 3
  %390 = extractelement <8 x i16> %378, i32 4
  %391 = insertelement <16 x i16> %389, i16 %390, i32 4
  %392 = extractelement <8 x i16> %378, i32 5
  %393 = insertelement <16 x i16> %391, i16 %392, i32 5
  %394 = extractelement <8 x i16> %378, i32 6
  %395 = insertelement <16 x i16> %393, i16 %394, i32 6
  %396 = extractelement <8 x i16> %378, i32 7
  %397 = insertelement <16 x i16> %395, i16 %396, i32 7
  %398 = extractelement <8 x i16> %381, i32 0
  %399 = insertelement <16 x i16> %397, i16 %398, i32 8
  %400 = extractelement <8 x i16> %381, i32 1
  %401 = insertelement <16 x i16> %399, i16 %400, i32 9
  %402 = extractelement <8 x i16> %381, i32 2
  %403 = insertelement <16 x i16> %401, i16 %402, i32 10
  %404 = extractelement <8 x i16> %381, i32 3
  %405 = insertelement <16 x i16> %403, i16 %404, i32 11
  %406 = extractelement <8 x i16> %381, i32 4
  %407 = insertelement <16 x i16> %405, i16 %406, i32 12
  %408 = extractelement <8 x i16> %381, i32 5
  %409 = insertelement <16 x i16> %407, i16 %408, i32 13
  %410 = extractelement <8 x i16> %381, i32 6
  %411 = insertelement <16 x i16> %409, i16 %410, i32 14
  %412 = extractelement <8 x i16> %381, i32 7
  %413 = insertelement <16 x i16> %411, i16 %412, i32 15
  %414 = bitcast <16 x i16> %413 to <8 x i32>
  %415 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %414)
  %416 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %415
  %417 = bitcast float* %380 to <4 x float>*
  %418 = bitcast <4 x float>* %379 to <8 x float>*
  store <8 x float> %416, <8 x float>* %418, align 1, !tbaa !2
  %419 = shufflevector <16 x i8> %375, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %420 = getelementptr inbounds float, float* %372, i64 8
  %421 = bitcast <16 x i8> %419 to <8 x i16>
  %422 = shufflevector <8 x i16> %421, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %423 = bitcast float* %420 to <4 x float>*
  %424 = getelementptr inbounds float, float* %372, i64 12
  %425 = shufflevector <8 x i16> %421, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %426 = extractelement <8 x i16> %422, i32 0
  %427 = insertelement <16 x i16> undef, i16 %426, i32 0
  %428 = extractelement <8 x i16> %422, i32 1
  %429 = insertelement <16 x i16> %427, i16 %428, i32 1
  %430 = extractelement <8 x i16> %422, i32 2
  %431 = insertelement <16 x i16> %429, i16 %430, i32 2
  %432 = extractelement <8 x i16> %422, i32 3
  %433 = insertelement <16 x i16> %431, i16 %432, i32 3
  %434 = extractelement <8 x i16> %422, i32 4
  %435 = insertelement <16 x i16> %433, i16 %434, i32 4
  %436 = extractelement <8 x i16> %422, i32 5
  %437 = insertelement <16 x i16> %435, i16 %436, i32 5
  %438 = extractelement <8 x i16> %422, i32 6
  %439 = insertelement <16 x i16> %437, i16 %438, i32 6
  %440 = extractelement <8 x i16> %422, i32 7
  %441 = insertelement <16 x i16> %439, i16 %440, i32 7
  %442 = extractelement <8 x i16> %425, i32 0
  %443 = insertelement <16 x i16> %441, i16 %442, i32 8
  %444 = extractelement <8 x i16> %425, i32 1
  %445 = insertelement <16 x i16> %443, i16 %444, i32 9
  %446 = extractelement <8 x i16> %425, i32 2
  %447 = insertelement <16 x i16> %445, i16 %446, i32 10
  %448 = extractelement <8 x i16> %425, i32 3
  %449 = insertelement <16 x i16> %447, i16 %448, i32 11
  %450 = extractelement <8 x i16> %425, i32 4
  %451 = insertelement <16 x i16> %449, i16 %450, i32 12
  %452 = extractelement <8 x i16> %425, i32 5
  %453 = insertelement <16 x i16> %451, i16 %452, i32 13
  %454 = extractelement <8 x i16> %425, i32 6
  %455 = insertelement <16 x i16> %453, i16 %454, i32 14
  %456 = extractelement <8 x i16> %425, i32 7
  %457 = insertelement <16 x i16> %455, i16 %456, i32 15
  %458 = bitcast <16 x i16> %457 to <8 x i32>
  %459 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %458)
  %460 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %459
  %461 = bitcast float* %424 to <4 x float>*
  %462 = bitcast <4 x float>* %423 to <8 x float>*
  store <8 x float> %460, <8 x float>* %462, align 1, !tbaa !2
  %463 = add nuw i64 %370, 16
  %464 = icmp ult i64 %463, %252
  br i1 %464, label %369, label %465

; <label>:465:                                    ; preds = %369
  %466 = getelementptr inbounds i8, i8* %367, i64 %2
  %467 = getelementptr inbounds i8, i8* %466, i64 -16
  %468 = getelementptr inbounds float, float* %368, i64 %2
  %469 = getelementptr inbounds float, float* %468, i64 -16
  %470 = bitcast i8* %467 to <16 x i8>*
  %471 = load <16 x i8>, <16 x i8>* %470, align 1, !tbaa !2
  %472 = xor <16 x i8> %471, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %473 = shufflevector <16 x i8> %472, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %474 = bitcast <16 x i8> %473 to <8 x i16>
  %475 = shufflevector <8 x i16> %474, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %476 = bitcast float* %469 to <4 x float>*
  %477 = getelementptr inbounds float, float* %469, i64 4
  %478 = shufflevector <8 x i16> %474, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %479 = extractelement <8 x i16> %475, i32 0
  %480 = insertelement <16 x i16> undef, i16 %479, i32 0
  %481 = extractelement <8 x i16> %475, i32 1
  %482 = insertelement <16 x i16> %480, i16 %481, i32 1
  %483 = extractelement <8 x i16> %475, i32 2
  %484 = insertelement <16 x i16> %482, i16 %483, i32 2
  %485 = extractelement <8 x i16> %475, i32 3
  %486 = insertelement <16 x i16> %484, i16 %485, i32 3
  %487 = extractelement <8 x i16> %475, i32 4
  %488 = insertelement <16 x i16> %486, i16 %487, i32 4
  %489 = extractelement <8 x i16> %475, i32 5
  %490 = insertelement <16 x i16> %488, i16 %489, i32 5
  %491 = extractelement <8 x i16> %475, i32 6
  %492 = insertelement <16 x i16> %490, i16 %491, i32 6
  %493 = extractelement <8 x i16> %475, i32 7
  %494 = insertelement <16 x i16> %492, i16 %493, i32 7
  %495 = extractelement <8 x i16> %478, i32 0
  %496 = insertelement <16 x i16> %494, i16 %495, i32 8
  %497 = extractelement <8 x i16> %478, i32 1
  %498 = insertelement <16 x i16> %496, i16 %497, i32 9
  %499 = extractelement <8 x i16> %478, i32 2
  %500 = insertelement <16 x i16> %498, i16 %499, i32 10
  %501 = extractelement <8 x i16> %478, i32 3
  %502 = insertelement <16 x i16> %500, i16 %501, i32 11
  %503 = extractelement <8 x i16> %478, i32 4
  %504 = insertelement <16 x i16> %502, i16 %503, i32 12
  %505 = extractelement <8 x i16> %478, i32 5
  %506 = insertelement <16 x i16> %504, i16 %505, i32 13
  %507 = extractelement <8 x i16> %478, i32 6
  %508 = insertelement <16 x i16> %506, i16 %507, i32 14
  %509 = extractelement <8 x i16> %478, i32 7
  %510 = insertelement <16 x i16> %508, i16 %509, i32 15
  %511 = bitcast <16 x i16> %510 to <8 x i32>
  %512 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %511)
  %513 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %512
  %514 = bitcast float* %477 to <4 x float>*
  %515 = bitcast <4 x float>* %476 to <8 x float>*
  store <8 x float> %513, <8 x float>* %515, align 1, !tbaa !2
  %516 = shufflevector <16 x i8> %472, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %517 = getelementptr inbounds float, float* %469, i64 8
  %518 = bitcast <16 x i8> %516 to <8 x i16>
  %519 = shufflevector <8 x i16> %518, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %520 = bitcast float* %517 to <4 x float>*
  %521 = getelementptr inbounds float, float* %469, i64 12
  %522 = shufflevector <8 x i16> %518, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %523 = extractelement <8 x i16> %519, i32 0
  %524 = insertelement <16 x i16> undef, i16 %523, i32 0
  %525 = extractelement <8 x i16> %519, i32 1
  %526 = insertelement <16 x i16> %524, i16 %525, i32 1
  %527 = extractelement <8 x i16> %519, i32 2
  %528 = insertelement <16 x i16> %526, i16 %527, i32 2
  %529 = extractelement <8 x i16> %519, i32 3
  %530 = insertelement <16 x i16> %528, i16 %529, i32 3
  %531 = extractelement <8 x i16> %519, i32 4
  %532 = insertelement <16 x i16> %530, i16 %531, i32 4
  %533 = extractelement <8 x i16> %519, i32 5
  %534 = insertelement <16 x i16> %532, i16 %533, i32 5
  %535 = extractelement <8 x i16> %519, i32 6
  %536 = insertelement <16 x i16> %534, i16 %535, i32 6
  %537 = extractelement <8 x i16> %519, i32 7
  %538 = insertelement <16 x i16> %536, i16 %537, i32 7
  %539 = extractelement <8 x i16> %522, i32 0
  %540 = insertelement <16 x i16> %538, i16 %539, i32 8
  %541 = extractelement <8 x i16> %522, i32 1
  %542 = insertelement <16 x i16> %540, i16 %541, i32 9
  %543 = extractelement <8 x i16> %522, i32 2
  %544 = insertelement <16 x i16> %542, i16 %543, i32 10
  %545 = extractelement <8 x i16> %522, i32 3
  %546 = insertelement <16 x i16> %544, i16 %545, i32 11
  %547 = extractelement <8 x i16> %522, i32 4
  %548 = insertelement <16 x i16> %546, i16 %547, i32 12
  %549 = extractelement <8 x i16> %522, i32 5
  %550 = insertelement <16 x i16> %548, i16 %549, i32 13
  %551 = extractelement <8 x i16> %522, i32 6
  %552 = insertelement <16 x i16> %550, i16 %551, i32 14
  %553 = extractelement <8 x i16> %522, i32 7
  %554 = insertelement <16 x i16> %552, i16 %553, i32 15
  %555 = bitcast <16 x i16> %554 to <8 x i32>
  %556 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %555)
  %557 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %556
  %558 = bitcast float* %521 to <4 x float>*
  %559 = bitcast <4 x float>* %520 to <8 x float>*
  store <8 x float> %557, <8 x float>* %559, align 1, !tbaa !2
  %560 = getelementptr inbounds i8, i8* %367, i64 %1
  %561 = add nuw i64 %366, 1
  %562 = icmp eq i64 %561, %3
  br i1 %562, label %666, label %365

; <label>:563:                                    ; preds = %254
  br i1 %256, label %666, label %564

; <label>:564:                                    ; preds = %563
  br label %565

; <label>:565:                                    ; preds = %565, %564
  %566 = phi i64 [ %664, %565 ], [ 0, %564 ]
  %567 = phi i8* [ %663, %565 ], [ %0, %564 ]
  %568 = phi float* [ %571, %565 ], [ %4, %564 ]
  %569 = getelementptr inbounds i8, i8* %567, i64 %2
  %570 = getelementptr inbounds i8, i8* %569, i64 -16
  %571 = getelementptr inbounds float, float* %568, i64 %2
  %572 = getelementptr inbounds float, float* %571, i64 -16
  %573 = bitcast i8* %570 to <16 x i8>*
  %574 = load <16 x i8>, <16 x i8>* %573, align 1, !tbaa !2
  %575 = xor <16 x i8> %574, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %576 = shufflevector <16 x i8> %575, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %577 = bitcast <16 x i8> %576 to <8 x i16>
  %578 = shufflevector <8 x i16> %577, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %579 = bitcast float* %572 to <4 x float>*
  %580 = getelementptr inbounds float, float* %572, i64 4
  %581 = shufflevector <8 x i16> %577, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %582 = extractelement <8 x i16> %578, i32 0
  %583 = insertelement <16 x i16> undef, i16 %582, i32 0
  %584 = extractelement <8 x i16> %578, i32 1
  %585 = insertelement <16 x i16> %583, i16 %584, i32 1
  %586 = extractelement <8 x i16> %578, i32 2
  %587 = insertelement <16 x i16> %585, i16 %586, i32 2
  %588 = extractelement <8 x i16> %578, i32 3
  %589 = insertelement <16 x i16> %587, i16 %588, i32 3
  %590 = extractelement <8 x i16> %578, i32 4
  %591 = insertelement <16 x i16> %589, i16 %590, i32 4
  %592 = extractelement <8 x i16> %578, i32 5
  %593 = insertelement <16 x i16> %591, i16 %592, i32 5
  %594 = extractelement <8 x i16> %578, i32 6
  %595 = insertelement <16 x i16> %593, i16 %594, i32 6
  %596 = extractelement <8 x i16> %578, i32 7
  %597 = insertelement <16 x i16> %595, i16 %596, i32 7
  %598 = extractelement <8 x i16> %581, i32 0
  %599 = insertelement <16 x i16> %597, i16 %598, i32 8
  %600 = extractelement <8 x i16> %581, i32 1
  %601 = insertelement <16 x i16> %599, i16 %600, i32 9
  %602 = extractelement <8 x i16> %581, i32 2
  %603 = insertelement <16 x i16> %601, i16 %602, i32 10
  %604 = extractelement <8 x i16> %581, i32 3
  %605 = insertelement <16 x i16> %603, i16 %604, i32 11
  %606 = extractelement <8 x i16> %581, i32 4
  %607 = insertelement <16 x i16> %605, i16 %606, i32 12
  %608 = extractelement <8 x i16> %581, i32 5
  %609 = insertelement <16 x i16> %607, i16 %608, i32 13
  %610 = extractelement <8 x i16> %581, i32 6
  %611 = insertelement <16 x i16> %609, i16 %610, i32 14
  %612 = extractelement <8 x i16> %581, i32 7
  %613 = insertelement <16 x i16> %611, i16 %612, i32 15
  %614 = bitcast <16 x i16> %613 to <8 x i32>
  %615 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %614)
  %616 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %615
  %617 = bitcast float* %580 to <4 x float>*
  %618 = bitcast <4 x float>* %579 to <8 x float>*
  store <8 x float> %616, <8 x float>* %618, align 1, !tbaa !2
  %619 = shufflevector <16 x i8> %575, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %620 = getelementptr inbounds float, float* %572, i64 8
  %621 = bitcast <16 x i8> %619 to <8 x i16>
  %622 = shufflevector <8 x i16> %621, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %623 = bitcast float* %620 to <4 x float>*
  %624 = getelementptr inbounds float, float* %572, i64 12
  %625 = shufflevector <8 x i16> %621, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %626 = extractelement <8 x i16> %622, i32 0
  %627 = insertelement <16 x i16> undef, i16 %626, i32 0
  %628 = extractelement <8 x i16> %622, i32 1
  %629 = insertelement <16 x i16> %627, i16 %628, i32 1
  %630 = extractelement <8 x i16> %622, i32 2
  %631 = insertelement <16 x i16> %629, i16 %630, i32 2
  %632 = extractelement <8 x i16> %622, i32 3
  %633 = insertelement <16 x i16> %631, i16 %632, i32 3
  %634 = extractelement <8 x i16> %622, i32 4
  %635 = insertelement <16 x i16> %633, i16 %634, i32 4
  %636 = extractelement <8 x i16> %622, i32 5
  %637 = insertelement <16 x i16> %635, i16 %636, i32 5
  %638 = extractelement <8 x i16> %622, i32 6
  %639 = insertelement <16 x i16> %637, i16 %638, i32 6
  %640 = extractelement <8 x i16> %622, i32 7
  %641 = insertelement <16 x i16> %639, i16 %640, i32 7
  %642 = extractelement <8 x i16> %625, i32 0
  %643 = insertelement <16 x i16> %641, i16 %642, i32 8
  %644 = extractelement <8 x i16> %625, i32 1
  %645 = insertelement <16 x i16> %643, i16 %644, i32 9
  %646 = extractelement <8 x i16> %625, i32 2
  %647 = insertelement <16 x i16> %645, i16 %646, i32 10
  %648 = extractelement <8 x i16> %625, i32 3
  %649 = insertelement <16 x i16> %647, i16 %648, i32 11
  %650 = extractelement <8 x i16> %625, i32 4
  %651 = insertelement <16 x i16> %649, i16 %650, i32 12
  %652 = extractelement <8 x i16> %625, i32 5
  %653 = insertelement <16 x i16> %651, i16 %652, i32 13
  %654 = extractelement <8 x i16> %625, i32 6
  %655 = insertelement <16 x i16> %653, i16 %654, i32 14
  %656 = extractelement <8 x i16> %625, i32 7
  %657 = insertelement <16 x i16> %655, i16 %656, i32 15
  %658 = bitcast <16 x i16> %657 to <8 x i32>
  %659 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %658)
  %660 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %659
  %661 = bitcast float* %624 to <4 x float>*
  %662 = bitcast <4 x float>* %623 to <8 x float>*
  store <8 x float> %660, <8 x float>* %662, align 1, !tbaa !2
  %663 = getelementptr inbounds i8, i8* %567, i64 %1
  %664 = add nuw i64 %566, 1
  %665 = icmp eq i64 %664, %3
  br i1 %665, label %666, label %565

; <label>:666:                                    ; preds = %565, %563, %465, %360, %251, %243, %140, %137
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
  br i1 %12, label %13, label %246

; <label>:13:                                     ; preds = %5
  %14 = bitcast float* %4 to i8*
  %15 = ptrtoint float* %4 to i64
  %16 = and i64 %15, -16
  %17 = inttoptr i64 %16 to i8*
  %18 = icmp eq i8* %17, %14
  %19 = and i64 %2, -16
  %20 = icmp eq i64 %19, %2
  %21 = and i1 %20, %18
  br i1 %21, label %22, label %246

; <label>:22:                                     ; preds = %13
  %23 = shl i64 %2, 2
  %24 = mul i64 %23, %3
  %25 = icmp ugt i64 %24, 1048575
  %26 = icmp ugt i64 %2, 15
  br i1 %25, label %27, label %137

; <label>:27:                                     ; preds = %22
  br i1 %26, label %29, label %28

; <label>:28:                                     ; preds = %27
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb1EEEvPKhmmmPf, i64 0, i64 0)) #6
  unreachable

; <label>:29:                                     ; preds = %27
  %30 = icmp eq i64 %3, 0
  br i1 %30, label %136, label %31

; <label>:31:                                     ; preds = %29
  br label %32

; <label>:32:                                     ; preds = %131, %31
  %33 = phi i64 [ %134, %131 ], [ 0, %31 ]
  %34 = phi i8* [ %132, %131 ], [ %0, %31 ]
  %35 = phi float* [ %133, %131 ], [ %4, %31 ]
  br label %36

; <label>:36:                                     ; preds = %36, %32
  %37 = phi i64 [ 0, %32 ], [ %129, %36 ]
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = getelementptr inbounds float, float* %35, i64 %37
  %40 = bitcast i8* %38 to <16 x i8>*
  %41 = load <16 x i8>, <16 x i8>* %40, align 16, !tbaa !2
  %42 = shufflevector <16 x i8> %41, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %43 = bitcast <16 x i8> %42 to <8 x i16>
  %44 = shufflevector <8 x i16> %43, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %45 = bitcast float* %39 to <4 x float>*
  %46 = getelementptr inbounds float, float* %39, i64 4
  %47 = shufflevector <8 x i16> %43, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %48 = extractelement <8 x i16> %44, i32 0
  %49 = insertelement <16 x i16> undef, i16 %48, i32 0
  %50 = extractelement <8 x i16> %44, i32 1
  %51 = insertelement <16 x i16> %49, i16 %50, i32 1
  %52 = extractelement <8 x i16> %44, i32 2
  %53 = insertelement <16 x i16> %51, i16 %52, i32 2
  %54 = extractelement <8 x i16> %44, i32 3
  %55 = insertelement <16 x i16> %53, i16 %54, i32 3
  %56 = extractelement <8 x i16> %44, i32 4
  %57 = insertelement <16 x i16> %55, i16 %56, i32 4
  %58 = extractelement <8 x i16> %44, i32 5
  %59 = insertelement <16 x i16> %57, i16 %58, i32 5
  %60 = extractelement <8 x i16> %44, i32 6
  %61 = insertelement <16 x i16> %59, i16 %60, i32 6
  %62 = extractelement <8 x i16> %44, i32 7
  %63 = insertelement <16 x i16> %61, i16 %62, i32 7
  %64 = extractelement <8 x i16> %47, i32 0
  %65 = insertelement <16 x i16> %63, i16 %64, i32 8
  %66 = extractelement <8 x i16> %47, i32 1
  %67 = insertelement <16 x i16> %65, i16 %66, i32 9
  %68 = extractelement <8 x i16> %47, i32 2
  %69 = insertelement <16 x i16> %67, i16 %68, i32 10
  %70 = extractelement <8 x i16> %47, i32 3
  %71 = insertelement <16 x i16> %69, i16 %70, i32 11
  %72 = extractelement <8 x i16> %47, i32 4
  %73 = insertelement <16 x i16> %71, i16 %72, i32 12
  %74 = extractelement <8 x i16> %47, i32 5
  %75 = insertelement <16 x i16> %73, i16 %74, i32 13
  %76 = extractelement <8 x i16> %47, i32 6
  %77 = insertelement <16 x i16> %75, i16 %76, i32 14
  %78 = extractelement <8 x i16> %47, i32 7
  %79 = insertelement <16 x i16> %77, i16 %78, i32 15
  %80 = bitcast <16 x i16> %79 to <8 x i32>
  %81 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %80)
  %82 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %81
  %83 = bitcast float* %46 to <4 x float>*
  %84 = bitcast <4 x float>* %45 to <8 x float>*
  store <8 x float> %82, <8 x float>* %84, align 16, !tbaa !2, !nontemporal !5
  %85 = shufflevector <16 x i8> %41, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %86 = getelementptr inbounds float, float* %39, i64 8
  %87 = bitcast <16 x i8> %85 to <8 x i16>
  %88 = shufflevector <8 x i16> %87, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %89 = bitcast float* %86 to <4 x float>*
  %90 = getelementptr inbounds float, float* %39, i64 12
  %91 = shufflevector <8 x i16> %87, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %92 = extractelement <8 x i16> %88, i32 0
  %93 = insertelement <16 x i16> undef, i16 %92, i32 0
  %94 = extractelement <8 x i16> %88, i32 1
  %95 = insertelement <16 x i16> %93, i16 %94, i32 1
  %96 = extractelement <8 x i16> %88, i32 2
  %97 = insertelement <16 x i16> %95, i16 %96, i32 2
  %98 = extractelement <8 x i16> %88, i32 3
  %99 = insertelement <16 x i16> %97, i16 %98, i32 3
  %100 = extractelement <8 x i16> %88, i32 4
  %101 = insertelement <16 x i16> %99, i16 %100, i32 4
  %102 = extractelement <8 x i16> %88, i32 5
  %103 = insertelement <16 x i16> %101, i16 %102, i32 5
  %104 = extractelement <8 x i16> %88, i32 6
  %105 = insertelement <16 x i16> %103, i16 %104, i32 6
  %106 = extractelement <8 x i16> %88, i32 7
  %107 = insertelement <16 x i16> %105, i16 %106, i32 7
  %108 = extractelement <8 x i16> %91, i32 0
  %109 = insertelement <16 x i16> %107, i16 %108, i32 8
  %110 = extractelement <8 x i16> %91, i32 1
  %111 = insertelement <16 x i16> %109, i16 %110, i32 9
  %112 = extractelement <8 x i16> %91, i32 2
  %113 = insertelement <16 x i16> %111, i16 %112, i32 10
  %114 = extractelement <8 x i16> %91, i32 3
  %115 = insertelement <16 x i16> %113, i16 %114, i32 11
  %116 = extractelement <8 x i16> %91, i32 4
  %117 = insertelement <16 x i16> %115, i16 %116, i32 12
  %118 = extractelement <8 x i16> %91, i32 5
  %119 = insertelement <16 x i16> %117, i16 %118, i32 13
  %120 = extractelement <8 x i16> %91, i32 6
  %121 = insertelement <16 x i16> %119, i16 %120, i32 14
  %122 = extractelement <8 x i16> %91, i32 7
  %123 = insertelement <16 x i16> %121, i16 %122, i32 15
  %124 = bitcast <16 x i16> %123 to <8 x i32>
  %125 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %124)
  %126 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %125
  %127 = bitcast float* %90 to <4 x float>*
  %128 = bitcast <4 x float>* %89 to <8 x float>*
  store <8 x float> %126, <8 x float>* %128, align 16, !tbaa !2, !nontemporal !5
  %129 = add nuw i64 %37, 16
  %130 = icmp ult i64 %129, %2
  br i1 %130, label %36, label %131

; <label>:131:                                    ; preds = %36
  %132 = getelementptr inbounds i8, i8* %34, i64 %1
  %133 = getelementptr inbounds float, float* %35, i64 %2
  %134 = add nuw i64 %33, 1
  %135 = icmp eq i64 %134, %3
  br i1 %135, label %136, label %32

; <label>:136:                                    ; preds = %131, %29
  tail call void @llvm.x86.sse2.mfence()
  br label %660

; <label>:137:                                    ; preds = %22
  br i1 %26, label %139, label %138

; <label>:138:                                    ; preds = %137
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb1ELb0EEEvPKhmmmPf, i64 0, i64 0)) #6
  unreachable

; <label>:139:                                    ; preds = %137
  %140 = icmp eq i64 %3, 0
  br i1 %140, label %660, label %141

; <label>:141:                                    ; preds = %139
  br label %142

; <label>:142:                                    ; preds = %241, %141
  %143 = phi i64 [ %244, %241 ], [ 0, %141 ]
  %144 = phi i8* [ %242, %241 ], [ %0, %141 ]
  %145 = phi float* [ %243, %241 ], [ %4, %141 ]
  br label %146

; <label>:146:                                    ; preds = %146, %142
  %147 = phi i64 [ 0, %142 ], [ %239, %146 ]
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = getelementptr inbounds float, float* %145, i64 %147
  %150 = bitcast i8* %148 to <16 x i8>*
  %151 = load <16 x i8>, <16 x i8>* %150, align 16, !tbaa !2
  %152 = shufflevector <16 x i8> %151, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %153 = bitcast <16 x i8> %152 to <8 x i16>
  %154 = shufflevector <8 x i16> %153, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %155 = bitcast float* %149 to <4 x float>*
  %156 = getelementptr inbounds float, float* %149, i64 4
  %157 = shufflevector <8 x i16> %153, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %158 = extractelement <8 x i16> %154, i32 0
  %159 = insertelement <16 x i16> undef, i16 %158, i32 0
  %160 = extractelement <8 x i16> %154, i32 1
  %161 = insertelement <16 x i16> %159, i16 %160, i32 1
  %162 = extractelement <8 x i16> %154, i32 2
  %163 = insertelement <16 x i16> %161, i16 %162, i32 2
  %164 = extractelement <8 x i16> %154, i32 3
  %165 = insertelement <16 x i16> %163, i16 %164, i32 3
  %166 = extractelement <8 x i16> %154, i32 4
  %167 = insertelement <16 x i16> %165, i16 %166, i32 4
  %168 = extractelement <8 x i16> %154, i32 5
  %169 = insertelement <16 x i16> %167, i16 %168, i32 5
  %170 = extractelement <8 x i16> %154, i32 6
  %171 = insertelement <16 x i16> %169, i16 %170, i32 6
  %172 = extractelement <8 x i16> %154, i32 7
  %173 = insertelement <16 x i16> %171, i16 %172, i32 7
  %174 = extractelement <8 x i16> %157, i32 0
  %175 = insertelement <16 x i16> %173, i16 %174, i32 8
  %176 = extractelement <8 x i16> %157, i32 1
  %177 = insertelement <16 x i16> %175, i16 %176, i32 9
  %178 = extractelement <8 x i16> %157, i32 2
  %179 = insertelement <16 x i16> %177, i16 %178, i32 10
  %180 = extractelement <8 x i16> %157, i32 3
  %181 = insertelement <16 x i16> %179, i16 %180, i32 11
  %182 = extractelement <8 x i16> %157, i32 4
  %183 = insertelement <16 x i16> %181, i16 %182, i32 12
  %184 = extractelement <8 x i16> %157, i32 5
  %185 = insertelement <16 x i16> %183, i16 %184, i32 13
  %186 = extractelement <8 x i16> %157, i32 6
  %187 = insertelement <16 x i16> %185, i16 %186, i32 14
  %188 = extractelement <8 x i16> %157, i32 7
  %189 = insertelement <16 x i16> %187, i16 %188, i32 15
  %190 = bitcast <16 x i16> %189 to <8 x i32>
  %191 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %190)
  %192 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %191
  %193 = bitcast float* %156 to <4 x float>*
  %194 = bitcast <4 x float>* %155 to <8 x float>*
  store <8 x float> %192, <8 x float>* %194, align 16, !tbaa !2
  %195 = shufflevector <16 x i8> %151, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %196 = getelementptr inbounds float, float* %149, i64 8
  %197 = bitcast <16 x i8> %195 to <8 x i16>
  %198 = shufflevector <8 x i16> %197, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %199 = bitcast float* %196 to <4 x float>*
  %200 = getelementptr inbounds float, float* %149, i64 12
  %201 = shufflevector <8 x i16> %197, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %202 = extractelement <8 x i16> %198, i32 0
  %203 = insertelement <16 x i16> undef, i16 %202, i32 0
  %204 = extractelement <8 x i16> %198, i32 1
  %205 = insertelement <16 x i16> %203, i16 %204, i32 1
  %206 = extractelement <8 x i16> %198, i32 2
  %207 = insertelement <16 x i16> %205, i16 %206, i32 2
  %208 = extractelement <8 x i16> %198, i32 3
  %209 = insertelement <16 x i16> %207, i16 %208, i32 3
  %210 = extractelement <8 x i16> %198, i32 4
  %211 = insertelement <16 x i16> %209, i16 %210, i32 4
  %212 = extractelement <8 x i16> %198, i32 5
  %213 = insertelement <16 x i16> %211, i16 %212, i32 5
  %214 = extractelement <8 x i16> %198, i32 6
  %215 = insertelement <16 x i16> %213, i16 %214, i32 6
  %216 = extractelement <8 x i16> %198, i32 7
  %217 = insertelement <16 x i16> %215, i16 %216, i32 7
  %218 = extractelement <8 x i16> %201, i32 0
  %219 = insertelement <16 x i16> %217, i16 %218, i32 8
  %220 = extractelement <8 x i16> %201, i32 1
  %221 = insertelement <16 x i16> %219, i16 %220, i32 9
  %222 = extractelement <8 x i16> %201, i32 2
  %223 = insertelement <16 x i16> %221, i16 %222, i32 10
  %224 = extractelement <8 x i16> %201, i32 3
  %225 = insertelement <16 x i16> %223, i16 %224, i32 11
  %226 = extractelement <8 x i16> %201, i32 4
  %227 = insertelement <16 x i16> %225, i16 %226, i32 12
  %228 = extractelement <8 x i16> %201, i32 5
  %229 = insertelement <16 x i16> %227, i16 %228, i32 13
  %230 = extractelement <8 x i16> %201, i32 6
  %231 = insertelement <16 x i16> %229, i16 %230, i32 14
  %232 = extractelement <8 x i16> %201, i32 7
  %233 = insertelement <16 x i16> %231, i16 %232, i32 15
  %234 = bitcast <16 x i16> %233 to <8 x i32>
  %235 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %234)
  %236 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %235
  %237 = bitcast float* %200 to <4 x float>*
  %238 = bitcast <4 x float>* %199 to <8 x float>*
  store <8 x float> %236, <8 x float>* %238, align 16, !tbaa !2
  %239 = add nuw i64 %147, 16
  %240 = icmp ult i64 %239, %2
  br i1 %240, label %146, label %241

; <label>:241:                                    ; preds = %146
  %242 = getelementptr inbounds i8, i8* %144, i64 %1
  %243 = getelementptr inbounds float, float* %145, i64 %2
  %244 = add nuw i64 %143, 1
  %245 = icmp eq i64 %244, %3
  br i1 %245, label %660, label %142

; <label>:246:                                    ; preds = %13, %5
  %247 = icmp ugt i64 %2, 15
  br i1 %247, label %249, label %248

; <label>:248:                                    ; preds = %246
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse213NeuralConvertILb0ELb0ELb0EEEvPKhmmmPf, i64 0, i64 0)) #6
  unreachable

; <label>:249:                                    ; preds = %246
  %250 = and i64 %2, -16
  %251 = icmp eq i64 %3, 0
  br i1 %251, label %660, label %252

; <label>:252:                                    ; preds = %249
  %253 = icmp eq i64 %250, 0
  %254 = icmp eq i64 %250, %2
  br i1 %253, label %558, label %255

; <label>:255:                                    ; preds = %252
  br i1 %254, label %257, label %256

; <label>:256:                                    ; preds = %255
  br label %362

; <label>:257:                                    ; preds = %255
  br label %258

; <label>:258:                                    ; preds = %357, %257
  %259 = phi i64 [ %360, %357 ], [ 0, %257 ]
  %260 = phi i8* [ %359, %357 ], [ %0, %257 ]
  %261 = phi float* [ %358, %357 ], [ %4, %257 ]
  br label %262

; <label>:262:                                    ; preds = %262, %258
  %263 = phi i64 [ 0, %258 ], [ %355, %262 ]
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  %265 = getelementptr inbounds float, float* %261, i64 %263
  %266 = bitcast i8* %264 to <16 x i8>*
  %267 = load <16 x i8>, <16 x i8>* %266, align 1, !tbaa !2
  %268 = shufflevector <16 x i8> %267, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %269 = bitcast <16 x i8> %268 to <8 x i16>
  %270 = shufflevector <8 x i16> %269, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %271 = bitcast float* %265 to <4 x float>*
  %272 = getelementptr inbounds float, float* %265, i64 4
  %273 = shufflevector <8 x i16> %269, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %274 = extractelement <8 x i16> %270, i32 0
  %275 = insertelement <16 x i16> undef, i16 %274, i32 0
  %276 = extractelement <8 x i16> %270, i32 1
  %277 = insertelement <16 x i16> %275, i16 %276, i32 1
  %278 = extractelement <8 x i16> %270, i32 2
  %279 = insertelement <16 x i16> %277, i16 %278, i32 2
  %280 = extractelement <8 x i16> %270, i32 3
  %281 = insertelement <16 x i16> %279, i16 %280, i32 3
  %282 = extractelement <8 x i16> %270, i32 4
  %283 = insertelement <16 x i16> %281, i16 %282, i32 4
  %284 = extractelement <8 x i16> %270, i32 5
  %285 = insertelement <16 x i16> %283, i16 %284, i32 5
  %286 = extractelement <8 x i16> %270, i32 6
  %287 = insertelement <16 x i16> %285, i16 %286, i32 6
  %288 = extractelement <8 x i16> %270, i32 7
  %289 = insertelement <16 x i16> %287, i16 %288, i32 7
  %290 = extractelement <8 x i16> %273, i32 0
  %291 = insertelement <16 x i16> %289, i16 %290, i32 8
  %292 = extractelement <8 x i16> %273, i32 1
  %293 = insertelement <16 x i16> %291, i16 %292, i32 9
  %294 = extractelement <8 x i16> %273, i32 2
  %295 = insertelement <16 x i16> %293, i16 %294, i32 10
  %296 = extractelement <8 x i16> %273, i32 3
  %297 = insertelement <16 x i16> %295, i16 %296, i32 11
  %298 = extractelement <8 x i16> %273, i32 4
  %299 = insertelement <16 x i16> %297, i16 %298, i32 12
  %300 = extractelement <8 x i16> %273, i32 5
  %301 = insertelement <16 x i16> %299, i16 %300, i32 13
  %302 = extractelement <8 x i16> %273, i32 6
  %303 = insertelement <16 x i16> %301, i16 %302, i32 14
  %304 = extractelement <8 x i16> %273, i32 7
  %305 = insertelement <16 x i16> %303, i16 %304, i32 15
  %306 = bitcast <16 x i16> %305 to <8 x i32>
  %307 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %306)
  %308 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %307
  %309 = bitcast float* %272 to <4 x float>*
  %310 = bitcast <4 x float>* %271 to <8 x float>*
  store <8 x float> %308, <8 x float>* %310, align 1, !tbaa !2
  %311 = shufflevector <16 x i8> %267, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %312 = getelementptr inbounds float, float* %265, i64 8
  %313 = bitcast <16 x i8> %311 to <8 x i16>
  %314 = shufflevector <8 x i16> %313, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %315 = bitcast float* %312 to <4 x float>*
  %316 = getelementptr inbounds float, float* %265, i64 12
  %317 = shufflevector <8 x i16> %313, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %318 = extractelement <8 x i16> %314, i32 0
  %319 = insertelement <16 x i16> undef, i16 %318, i32 0
  %320 = extractelement <8 x i16> %314, i32 1
  %321 = insertelement <16 x i16> %319, i16 %320, i32 1
  %322 = extractelement <8 x i16> %314, i32 2
  %323 = insertelement <16 x i16> %321, i16 %322, i32 2
  %324 = extractelement <8 x i16> %314, i32 3
  %325 = insertelement <16 x i16> %323, i16 %324, i32 3
  %326 = extractelement <8 x i16> %314, i32 4
  %327 = insertelement <16 x i16> %325, i16 %326, i32 4
  %328 = extractelement <8 x i16> %314, i32 5
  %329 = insertelement <16 x i16> %327, i16 %328, i32 5
  %330 = extractelement <8 x i16> %314, i32 6
  %331 = insertelement <16 x i16> %329, i16 %330, i32 6
  %332 = extractelement <8 x i16> %314, i32 7
  %333 = insertelement <16 x i16> %331, i16 %332, i32 7
  %334 = extractelement <8 x i16> %317, i32 0
  %335 = insertelement <16 x i16> %333, i16 %334, i32 8
  %336 = extractelement <8 x i16> %317, i32 1
  %337 = insertelement <16 x i16> %335, i16 %336, i32 9
  %338 = extractelement <8 x i16> %317, i32 2
  %339 = insertelement <16 x i16> %337, i16 %338, i32 10
  %340 = extractelement <8 x i16> %317, i32 3
  %341 = insertelement <16 x i16> %339, i16 %340, i32 11
  %342 = extractelement <8 x i16> %317, i32 4
  %343 = insertelement <16 x i16> %341, i16 %342, i32 12
  %344 = extractelement <8 x i16> %317, i32 5
  %345 = insertelement <16 x i16> %343, i16 %344, i32 13
  %346 = extractelement <8 x i16> %317, i32 6
  %347 = insertelement <16 x i16> %345, i16 %346, i32 14
  %348 = extractelement <8 x i16> %317, i32 7
  %349 = insertelement <16 x i16> %347, i16 %348, i32 15
  %350 = bitcast <16 x i16> %349 to <8 x i32>
  %351 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %350)
  %352 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %351
  %353 = bitcast float* %316 to <4 x float>*
  %354 = bitcast <4 x float>* %315 to <8 x float>*
  store <8 x float> %352, <8 x float>* %354, align 1, !tbaa !2
  %355 = add nuw i64 %263, 16
  %356 = icmp ult i64 %355, %2
  br i1 %356, label %262, label %357

; <label>:357:                                    ; preds = %262
  %358 = getelementptr inbounds float, float* %261, i64 %2
  %359 = getelementptr inbounds i8, i8* %260, i64 %1
  %360 = add nuw i64 %259, 1
  %361 = icmp eq i64 %360, %3
  br i1 %361, label %660, label %258

; <label>:362:                                    ; preds = %461, %256
  %363 = phi i64 [ %556, %461 ], [ 0, %256 ]
  %364 = phi i8* [ %555, %461 ], [ %0, %256 ]
  %365 = phi float* [ %464, %461 ], [ %4, %256 ]
  br label %366

; <label>:366:                                    ; preds = %366, %362
  %367 = phi i64 [ 0, %362 ], [ %459, %366 ]
  %368 = getelementptr inbounds i8, i8* %364, i64 %367
  %369 = getelementptr inbounds float, float* %365, i64 %367
  %370 = bitcast i8* %368 to <16 x i8>*
  %371 = load <16 x i8>, <16 x i8>* %370, align 1, !tbaa !2
  %372 = shufflevector <16 x i8> %371, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %373 = bitcast <16 x i8> %372 to <8 x i16>
  %374 = shufflevector <8 x i16> %373, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %375 = bitcast float* %369 to <4 x float>*
  %376 = getelementptr inbounds float, float* %369, i64 4
  %377 = shufflevector <8 x i16> %373, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %378 = extractelement <8 x i16> %374, i32 0
  %379 = insertelement <16 x i16> undef, i16 %378, i32 0
  %380 = extractelement <8 x i16> %374, i32 1
  %381 = insertelement <16 x i16> %379, i16 %380, i32 1
  %382 = extractelement <8 x i16> %374, i32 2
  %383 = insertelement <16 x i16> %381, i16 %382, i32 2
  %384 = extractelement <8 x i16> %374, i32 3
  %385 = insertelement <16 x i16> %383, i16 %384, i32 3
  %386 = extractelement <8 x i16> %374, i32 4
  %387 = insertelement <16 x i16> %385, i16 %386, i32 4
  %388 = extractelement <8 x i16> %374, i32 5
  %389 = insertelement <16 x i16> %387, i16 %388, i32 5
  %390 = extractelement <8 x i16> %374, i32 6
  %391 = insertelement <16 x i16> %389, i16 %390, i32 6
  %392 = extractelement <8 x i16> %374, i32 7
  %393 = insertelement <16 x i16> %391, i16 %392, i32 7
  %394 = extractelement <8 x i16> %377, i32 0
  %395 = insertelement <16 x i16> %393, i16 %394, i32 8
  %396 = extractelement <8 x i16> %377, i32 1
  %397 = insertelement <16 x i16> %395, i16 %396, i32 9
  %398 = extractelement <8 x i16> %377, i32 2
  %399 = insertelement <16 x i16> %397, i16 %398, i32 10
  %400 = extractelement <8 x i16> %377, i32 3
  %401 = insertelement <16 x i16> %399, i16 %400, i32 11
  %402 = extractelement <8 x i16> %377, i32 4
  %403 = insertelement <16 x i16> %401, i16 %402, i32 12
  %404 = extractelement <8 x i16> %377, i32 5
  %405 = insertelement <16 x i16> %403, i16 %404, i32 13
  %406 = extractelement <8 x i16> %377, i32 6
  %407 = insertelement <16 x i16> %405, i16 %406, i32 14
  %408 = extractelement <8 x i16> %377, i32 7
  %409 = insertelement <16 x i16> %407, i16 %408, i32 15
  %410 = bitcast <16 x i16> %409 to <8 x i32>
  %411 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %410)
  %412 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %411
  %413 = bitcast float* %376 to <4 x float>*
  %414 = bitcast <4 x float>* %375 to <8 x float>*
  store <8 x float> %412, <8 x float>* %414, align 1, !tbaa !2
  %415 = shufflevector <16 x i8> %371, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %416 = getelementptr inbounds float, float* %369, i64 8
  %417 = bitcast <16 x i8> %415 to <8 x i16>
  %418 = shufflevector <8 x i16> %417, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %419 = bitcast float* %416 to <4 x float>*
  %420 = getelementptr inbounds float, float* %369, i64 12
  %421 = shufflevector <8 x i16> %417, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %422 = extractelement <8 x i16> %418, i32 0
  %423 = insertelement <16 x i16> undef, i16 %422, i32 0
  %424 = extractelement <8 x i16> %418, i32 1
  %425 = insertelement <16 x i16> %423, i16 %424, i32 1
  %426 = extractelement <8 x i16> %418, i32 2
  %427 = insertelement <16 x i16> %425, i16 %426, i32 2
  %428 = extractelement <8 x i16> %418, i32 3
  %429 = insertelement <16 x i16> %427, i16 %428, i32 3
  %430 = extractelement <8 x i16> %418, i32 4
  %431 = insertelement <16 x i16> %429, i16 %430, i32 4
  %432 = extractelement <8 x i16> %418, i32 5
  %433 = insertelement <16 x i16> %431, i16 %432, i32 5
  %434 = extractelement <8 x i16> %418, i32 6
  %435 = insertelement <16 x i16> %433, i16 %434, i32 6
  %436 = extractelement <8 x i16> %418, i32 7
  %437 = insertelement <16 x i16> %435, i16 %436, i32 7
  %438 = extractelement <8 x i16> %421, i32 0
  %439 = insertelement <16 x i16> %437, i16 %438, i32 8
  %440 = extractelement <8 x i16> %421, i32 1
  %441 = insertelement <16 x i16> %439, i16 %440, i32 9
  %442 = extractelement <8 x i16> %421, i32 2
  %443 = insertelement <16 x i16> %441, i16 %442, i32 10
  %444 = extractelement <8 x i16> %421, i32 3
  %445 = insertelement <16 x i16> %443, i16 %444, i32 11
  %446 = extractelement <8 x i16> %421, i32 4
  %447 = insertelement <16 x i16> %445, i16 %446, i32 12
  %448 = extractelement <8 x i16> %421, i32 5
  %449 = insertelement <16 x i16> %447, i16 %448, i32 13
  %450 = extractelement <8 x i16> %421, i32 6
  %451 = insertelement <16 x i16> %449, i16 %450, i32 14
  %452 = extractelement <8 x i16> %421, i32 7
  %453 = insertelement <16 x i16> %451, i16 %452, i32 15
  %454 = bitcast <16 x i16> %453 to <8 x i32>
  %455 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %454)
  %456 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %455
  %457 = bitcast float* %420 to <4 x float>*
  %458 = bitcast <4 x float>* %419 to <8 x float>*
  store <8 x float> %456, <8 x float>* %458, align 1, !tbaa !2
  %459 = add nuw i64 %367, 16
  %460 = icmp ult i64 %459, %250
  br i1 %460, label %366, label %461

; <label>:461:                                    ; preds = %366
  %462 = getelementptr inbounds i8, i8* %364, i64 %2
  %463 = getelementptr inbounds i8, i8* %462, i64 -16
  %464 = getelementptr inbounds float, float* %365, i64 %2
  %465 = getelementptr inbounds float, float* %464, i64 -16
  %466 = bitcast i8* %463 to <16 x i8>*
  %467 = load <16 x i8>, <16 x i8>* %466, align 1, !tbaa !2
  %468 = shufflevector <16 x i8> %467, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %469 = bitcast <16 x i8> %468 to <8 x i16>
  %470 = shufflevector <8 x i16> %469, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %471 = bitcast float* %465 to <4 x float>*
  %472 = getelementptr inbounds float, float* %465, i64 4
  %473 = shufflevector <8 x i16> %469, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %474 = extractelement <8 x i16> %470, i32 0
  %475 = insertelement <16 x i16> undef, i16 %474, i32 0
  %476 = extractelement <8 x i16> %470, i32 1
  %477 = insertelement <16 x i16> %475, i16 %476, i32 1
  %478 = extractelement <8 x i16> %470, i32 2
  %479 = insertelement <16 x i16> %477, i16 %478, i32 2
  %480 = extractelement <8 x i16> %470, i32 3
  %481 = insertelement <16 x i16> %479, i16 %480, i32 3
  %482 = extractelement <8 x i16> %470, i32 4
  %483 = insertelement <16 x i16> %481, i16 %482, i32 4
  %484 = extractelement <8 x i16> %470, i32 5
  %485 = insertelement <16 x i16> %483, i16 %484, i32 5
  %486 = extractelement <8 x i16> %470, i32 6
  %487 = insertelement <16 x i16> %485, i16 %486, i32 6
  %488 = extractelement <8 x i16> %470, i32 7
  %489 = insertelement <16 x i16> %487, i16 %488, i32 7
  %490 = extractelement <8 x i16> %473, i32 0
  %491 = insertelement <16 x i16> %489, i16 %490, i32 8
  %492 = extractelement <8 x i16> %473, i32 1
  %493 = insertelement <16 x i16> %491, i16 %492, i32 9
  %494 = extractelement <8 x i16> %473, i32 2
  %495 = insertelement <16 x i16> %493, i16 %494, i32 10
  %496 = extractelement <8 x i16> %473, i32 3
  %497 = insertelement <16 x i16> %495, i16 %496, i32 11
  %498 = extractelement <8 x i16> %473, i32 4
  %499 = insertelement <16 x i16> %497, i16 %498, i32 12
  %500 = extractelement <8 x i16> %473, i32 5
  %501 = insertelement <16 x i16> %499, i16 %500, i32 13
  %502 = extractelement <8 x i16> %473, i32 6
  %503 = insertelement <16 x i16> %501, i16 %502, i32 14
  %504 = extractelement <8 x i16> %473, i32 7
  %505 = insertelement <16 x i16> %503, i16 %504, i32 15
  %506 = bitcast <16 x i16> %505 to <8 x i32>
  %507 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %506)
  %508 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %507
  %509 = bitcast float* %472 to <4 x float>*
  %510 = bitcast <4 x float>* %471 to <8 x float>*
  store <8 x float> %508, <8 x float>* %510, align 1, !tbaa !2
  %511 = shufflevector <16 x i8> %467, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %512 = getelementptr inbounds float, float* %465, i64 8
  %513 = bitcast <16 x i8> %511 to <8 x i16>
  %514 = shufflevector <8 x i16> %513, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %515 = bitcast float* %512 to <4 x float>*
  %516 = getelementptr inbounds float, float* %465, i64 12
  %517 = shufflevector <8 x i16> %513, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %518 = extractelement <8 x i16> %514, i32 0
  %519 = insertelement <16 x i16> undef, i16 %518, i32 0
  %520 = extractelement <8 x i16> %514, i32 1
  %521 = insertelement <16 x i16> %519, i16 %520, i32 1
  %522 = extractelement <8 x i16> %514, i32 2
  %523 = insertelement <16 x i16> %521, i16 %522, i32 2
  %524 = extractelement <8 x i16> %514, i32 3
  %525 = insertelement <16 x i16> %523, i16 %524, i32 3
  %526 = extractelement <8 x i16> %514, i32 4
  %527 = insertelement <16 x i16> %525, i16 %526, i32 4
  %528 = extractelement <8 x i16> %514, i32 5
  %529 = insertelement <16 x i16> %527, i16 %528, i32 5
  %530 = extractelement <8 x i16> %514, i32 6
  %531 = insertelement <16 x i16> %529, i16 %530, i32 6
  %532 = extractelement <8 x i16> %514, i32 7
  %533 = insertelement <16 x i16> %531, i16 %532, i32 7
  %534 = extractelement <8 x i16> %517, i32 0
  %535 = insertelement <16 x i16> %533, i16 %534, i32 8
  %536 = extractelement <8 x i16> %517, i32 1
  %537 = insertelement <16 x i16> %535, i16 %536, i32 9
  %538 = extractelement <8 x i16> %517, i32 2
  %539 = insertelement <16 x i16> %537, i16 %538, i32 10
  %540 = extractelement <8 x i16> %517, i32 3
  %541 = insertelement <16 x i16> %539, i16 %540, i32 11
  %542 = extractelement <8 x i16> %517, i32 4
  %543 = insertelement <16 x i16> %541, i16 %542, i32 12
  %544 = extractelement <8 x i16> %517, i32 5
  %545 = insertelement <16 x i16> %543, i16 %544, i32 13
  %546 = extractelement <8 x i16> %517, i32 6
  %547 = insertelement <16 x i16> %545, i16 %546, i32 14
  %548 = extractelement <8 x i16> %517, i32 7
  %549 = insertelement <16 x i16> %547, i16 %548, i32 15
  %550 = bitcast <16 x i16> %549 to <8 x i32>
  %551 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %550)
  %552 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %551
  %553 = bitcast float* %516 to <4 x float>*
  %554 = bitcast <4 x float>* %515 to <8 x float>*
  store <8 x float> %552, <8 x float>* %554, align 1, !tbaa !2
  %555 = getelementptr inbounds i8, i8* %364, i64 %1
  %556 = add nuw i64 %363, 1
  %557 = icmp eq i64 %556, %3
  br i1 %557, label %660, label %362

; <label>:558:                                    ; preds = %252
  br i1 %254, label %660, label %559

; <label>:559:                                    ; preds = %558
  br label %560

; <label>:560:                                    ; preds = %560, %559
  %561 = phi i64 [ %658, %560 ], [ 0, %559 ]
  %562 = phi i8* [ %657, %560 ], [ %0, %559 ]
  %563 = phi float* [ %566, %560 ], [ %4, %559 ]
  %564 = getelementptr inbounds i8, i8* %562, i64 %2
  %565 = getelementptr inbounds i8, i8* %564, i64 -16
  %566 = getelementptr inbounds float, float* %563, i64 %2
  %567 = getelementptr inbounds float, float* %566, i64 -16
  %568 = bitcast i8* %565 to <16 x i8>*
  %569 = load <16 x i8>, <16 x i8>* %568, align 1, !tbaa !2
  %570 = shufflevector <16 x i8> %569, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %571 = bitcast <16 x i8> %570 to <8 x i16>
  %572 = shufflevector <8 x i16> %571, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %573 = bitcast float* %567 to <4 x float>*
  %574 = getelementptr inbounds float, float* %567, i64 4
  %575 = shufflevector <8 x i16> %571, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %576 = extractelement <8 x i16> %572, i32 0
  %577 = insertelement <16 x i16> undef, i16 %576, i32 0
  %578 = extractelement <8 x i16> %572, i32 1
  %579 = insertelement <16 x i16> %577, i16 %578, i32 1
  %580 = extractelement <8 x i16> %572, i32 2
  %581 = insertelement <16 x i16> %579, i16 %580, i32 2
  %582 = extractelement <8 x i16> %572, i32 3
  %583 = insertelement <16 x i16> %581, i16 %582, i32 3
  %584 = extractelement <8 x i16> %572, i32 4
  %585 = insertelement <16 x i16> %583, i16 %584, i32 4
  %586 = extractelement <8 x i16> %572, i32 5
  %587 = insertelement <16 x i16> %585, i16 %586, i32 5
  %588 = extractelement <8 x i16> %572, i32 6
  %589 = insertelement <16 x i16> %587, i16 %588, i32 6
  %590 = extractelement <8 x i16> %572, i32 7
  %591 = insertelement <16 x i16> %589, i16 %590, i32 7
  %592 = extractelement <8 x i16> %575, i32 0
  %593 = insertelement <16 x i16> %591, i16 %592, i32 8
  %594 = extractelement <8 x i16> %575, i32 1
  %595 = insertelement <16 x i16> %593, i16 %594, i32 9
  %596 = extractelement <8 x i16> %575, i32 2
  %597 = insertelement <16 x i16> %595, i16 %596, i32 10
  %598 = extractelement <8 x i16> %575, i32 3
  %599 = insertelement <16 x i16> %597, i16 %598, i32 11
  %600 = extractelement <8 x i16> %575, i32 4
  %601 = insertelement <16 x i16> %599, i16 %600, i32 12
  %602 = extractelement <8 x i16> %575, i32 5
  %603 = insertelement <16 x i16> %601, i16 %602, i32 13
  %604 = extractelement <8 x i16> %575, i32 6
  %605 = insertelement <16 x i16> %603, i16 %604, i32 14
  %606 = extractelement <8 x i16> %575, i32 7
  %607 = insertelement <16 x i16> %605, i16 %606, i32 15
  %608 = bitcast <16 x i16> %607 to <8 x i32>
  %609 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %608)
  %610 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %609
  %611 = bitcast float* %574 to <4 x float>*
  %612 = bitcast <4 x float>* %573 to <8 x float>*
  store <8 x float> %610, <8 x float>* %612, align 1, !tbaa !2
  %613 = shufflevector <16 x i8> %569, <16 x i8> <i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %614 = getelementptr inbounds float, float* %567, i64 8
  %615 = bitcast <16 x i8> %613 to <8 x i16>
  %616 = shufflevector <8 x i16> %615, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %617 = bitcast float* %614 to <4 x float>*
  %618 = getelementptr inbounds float, float* %567, i64 12
  %619 = shufflevector <8 x i16> %615, <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %620 = extractelement <8 x i16> %616, i32 0
  %621 = insertelement <16 x i16> undef, i16 %620, i32 0
  %622 = extractelement <8 x i16> %616, i32 1
  %623 = insertelement <16 x i16> %621, i16 %622, i32 1
  %624 = extractelement <8 x i16> %616, i32 2
  %625 = insertelement <16 x i16> %623, i16 %624, i32 2
  %626 = extractelement <8 x i16> %616, i32 3
  %627 = insertelement <16 x i16> %625, i16 %626, i32 3
  %628 = extractelement <8 x i16> %616, i32 4
  %629 = insertelement <16 x i16> %627, i16 %628, i32 4
  %630 = extractelement <8 x i16> %616, i32 5
  %631 = insertelement <16 x i16> %629, i16 %630, i32 5
  %632 = extractelement <8 x i16> %616, i32 6
  %633 = insertelement <16 x i16> %631, i16 %632, i32 6
  %634 = extractelement <8 x i16> %616, i32 7
  %635 = insertelement <16 x i16> %633, i16 %634, i32 7
  %636 = extractelement <8 x i16> %619, i32 0
  %637 = insertelement <16 x i16> %635, i16 %636, i32 8
  %638 = extractelement <8 x i16> %619, i32 1
  %639 = insertelement <16 x i16> %637, i16 %638, i32 9
  %640 = extractelement <8 x i16> %619, i32 2
  %641 = insertelement <16 x i16> %639, i16 %640, i32 10
  %642 = extractelement <8 x i16> %619, i32 3
  %643 = insertelement <16 x i16> %641, i16 %642, i32 11
  %644 = extractelement <8 x i16> %619, i32 4
  %645 = insertelement <16 x i16> %643, i16 %644, i32 12
  %646 = extractelement <8 x i16> %619, i32 5
  %647 = insertelement <16 x i16> %645, i16 %646, i32 13
  %648 = extractelement <8 x i16> %619, i32 6
  %649 = insertelement <16 x i16> %647, i16 %648, i32 14
  %650 = extractelement <8 x i16> %619, i32 7
  %651 = insertelement <16 x i16> %649, i16 %650, i32 15
  %652 = bitcast <16 x i16> %651 to <8 x i32>
  %653 = call <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32> %652)
  %654 = fmul <8 x float> <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>, %653
  %655 = bitcast float* %618 to <4 x float>*
  %656 = bitcast <4 x float>* %617 to <8 x float>*
  store <8 x float> %654, <8 x float>* %656, align 1, !tbaa !2
  %657 = getelementptr inbounds i8, i8* %562, i64 %1
  %658 = add nuw i64 %561, 1
  %659 = icmp eq i64 %658, %3
  br i1 %659, label %660, label %560

; <label>:660:                                    ; preds = %560, %558, %461, %357, %249, %241, %139, %136
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.x86.sse2.mfence() #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse2.cvtdq2ps(<4 x i32>) #4

; Function Attrs: nounwind readnone
declare <8 x float> @llvm.x86.avx.cvtdq2.ps.256(<8 x i32>) #5

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "target-cpu"="skylake" }
attributes #4 = { nounwind readnone "target-cpu"="skylake" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-svn326550-1~exp1~20180305180131.61 (branches/release_60)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{i32 1}
