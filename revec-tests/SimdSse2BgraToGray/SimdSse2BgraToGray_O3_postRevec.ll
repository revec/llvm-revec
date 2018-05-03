; ModuleID = 'SimdSse2BgraToGray/SimdSse2BgraToGray_O3.ll'
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, i64 0, i64 0)) #7
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, i64 0, i64 0)) #7
  unreachable

; <label>:26:                                     ; preds = %17
  %27 = and i64 %1, -16
  %28 = icmp eq i64 %27, %1
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %26
  tail call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__PRETTY_FUNCTION__._ZN4Simd4Sse210BgraToGrayEPKhmmmPhm, i64 0, i64 0)) #7
  unreachable

; <label>:30:                                     ; preds = %26
  %31 = icmp eq i64 %2, 0
  br i1 %31, label %496, label %32

; <label>:32:                                     ; preds = %30
  %33 = add i64 %1, -1
  %34 = lshr i64 %33, 4
  %35 = add nuw nsw i64 %34, 1
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %34, 0
  %38 = icmp eq i64 %36, 0
  %39 = sub nsw i64 %35, %36
  br label %40

; <label>:40:                                     ; preds = %491, %32
  %41 = phi i64 [ 0, %32 ], [ %494, %491 ]
  %42 = phi i8* [ %0, %32 ], [ %492, %491 ]
  %43 = phi i8* [ %4, %32 ], [ %493, %491 ]
  br i1 %37, label %426, label %44

; <label>:44:                                     ; preds = %40
  br label %45

; <label>:45:                                     ; preds = %45, %44
  %46 = phi i64 [ %423, %45 ], [ 0, %44 ]
  %47 = phi i64 [ %424, %45 ], [ %39, %44 ]
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
  %64 = bitcast <2 x i64> %54 to <16 x i8>
  %65 = shufflevector <16 x i8> %64, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %66 = bitcast <2 x i64> %57 to <16 x i8>
  %67 = shufflevector <16 x i8> %66, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %68 = bitcast <2 x i64> %60 to <16 x i8>
  %69 = shufflevector <16 x i8> %68, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %70 = bitcast i8* %61 to <16 x i8>*
  %71 = or i64 %46, 16
  %72 = shl i64 %71, 2
  %73 = getelementptr inbounds i8, i8* %42, i64 %72
  %74 = bitcast i8* %73 to <2 x i64>*
  %75 = load <2 x i64>, <2 x i64>* %74, align 16, !tbaa !2, !alias.scope !5
  %76 = getelementptr inbounds i8, i8* %73, i64 16
  %77 = bitcast i8* %76 to <2 x i64>*
  %78 = load <2 x i64>, <2 x i64>* %77, align 16, !tbaa !2, !alias.scope !5
  %79 = getelementptr inbounds i8, i8* %73, i64 32
  %80 = bitcast i8* %79 to <2 x i64>*
  %81 = load <2 x i64>, <2 x i64>* %80, align 16, !tbaa !2, !alias.scope !5
  %82 = getelementptr inbounds i8, i8* %73, i64 48
  %83 = bitcast i8* %82 to <2 x i64>*
  %84 = load <2 x i64>, <2 x i64>* %83, align 16, !tbaa !2, !alias.scope !5
  %85 = getelementptr inbounds i8, i8* %43, i64 %71
  %86 = bitcast <2 x i64> %75 to <16 x i8>
  %87 = shufflevector <16 x i8> %86, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %88 = extractelement <16 x i8> %63, i32 0
  %89 = insertelement <32 x i8> undef, i8 %88, i32 0
  %90 = extractelement <16 x i8> %63, i32 1
  %91 = insertelement <32 x i8> %89, i8 %90, i32 1
  %92 = extractelement <16 x i8> %63, i32 2
  %93 = insertelement <32 x i8> %91, i8 %92, i32 2
  %94 = extractelement <16 x i8> %63, i32 3
  %95 = insertelement <32 x i8> %93, i8 %94, i32 3
  %96 = extractelement <16 x i8> %63, i32 4
  %97 = insertelement <32 x i8> %95, i8 %96, i32 4
  %98 = extractelement <16 x i8> %63, i32 5
  %99 = insertelement <32 x i8> %97, i8 %98, i32 5
  %100 = extractelement <16 x i8> %63, i32 6
  %101 = insertelement <32 x i8> %99, i8 %100, i32 6
  %102 = extractelement <16 x i8> %63, i32 7
  %103 = insertelement <32 x i8> %101, i8 %102, i32 7
  %104 = extractelement <16 x i8> %63, i32 8
  %105 = insertelement <32 x i8> %103, i8 %104, i32 8
  %106 = extractelement <16 x i8> %63, i32 9
  %107 = insertelement <32 x i8> %105, i8 %106, i32 9
  %108 = extractelement <16 x i8> %63, i32 10
  %109 = insertelement <32 x i8> %107, i8 %108, i32 10
  %110 = extractelement <16 x i8> %63, i32 11
  %111 = insertelement <32 x i8> %109, i8 %110, i32 11
  %112 = extractelement <16 x i8> %63, i32 12
  %113 = insertelement <32 x i8> %111, i8 %112, i32 12
  %114 = extractelement <16 x i8> %63, i32 13
  %115 = insertelement <32 x i8> %113, i8 %114, i32 13
  %116 = extractelement <16 x i8> %63, i32 14
  %117 = insertelement <32 x i8> %115, i8 %116, i32 14
  %118 = extractelement <16 x i8> %63, i32 15
  %119 = insertelement <32 x i8> %117, i8 %118, i32 15
  %120 = extractelement <16 x i8> %87, i32 0
  %121 = insertelement <32 x i8> %119, i8 %120, i32 16
  %122 = extractelement <16 x i8> %87, i32 1
  %123 = insertelement <32 x i8> %121, i8 %122, i32 17
  %124 = extractelement <16 x i8> %87, i32 2
  %125 = insertelement <32 x i8> %123, i8 %124, i32 18
  %126 = extractelement <16 x i8> %87, i32 3
  %127 = insertelement <32 x i8> %125, i8 %126, i32 19
  %128 = extractelement <16 x i8> %87, i32 4
  %129 = insertelement <32 x i8> %127, i8 %128, i32 20
  %130 = extractelement <16 x i8> %87, i32 5
  %131 = insertelement <32 x i8> %129, i8 %130, i32 21
  %132 = extractelement <16 x i8> %87, i32 6
  %133 = insertelement <32 x i8> %131, i8 %132, i32 22
  %134 = extractelement <16 x i8> %87, i32 7
  %135 = insertelement <32 x i8> %133, i8 %134, i32 23
  %136 = extractelement <16 x i8> %87, i32 8
  %137 = insertelement <32 x i8> %135, i8 %136, i32 24
  %138 = extractelement <16 x i8> %87, i32 9
  %139 = insertelement <32 x i8> %137, i8 %138, i32 25
  %140 = extractelement <16 x i8> %87, i32 10
  %141 = insertelement <32 x i8> %139, i8 %140, i32 26
  %142 = extractelement <16 x i8> %87, i32 11
  %143 = insertelement <32 x i8> %141, i8 %142, i32 27
  %144 = extractelement <16 x i8> %87, i32 12
  %145 = insertelement <32 x i8> %143, i8 %144, i32 28
  %146 = extractelement <16 x i8> %87, i32 13
  %147 = insertelement <32 x i8> %145, i8 %146, i32 29
  %148 = extractelement <16 x i8> %87, i32 14
  %149 = insertelement <32 x i8> %147, i8 %148, i32 30
  %150 = extractelement <16 x i8> %87, i32 15
  %151 = insertelement <32 x i8> %149, i8 %150, i32 31
  %152 = bitcast <32 x i8> %151 to <16 x i16>
  %153 = and <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, %152
  %154 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %153, <16 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>)
  %155 = extractelement <2 x i64> %51, i32 0
  %156 = insertelement <4 x i64> undef, i64 %155, i32 0
  %157 = extractelement <2 x i64> %51, i32 1
  %158 = insertelement <4 x i64> %156, i64 %157, i32 1
  %159 = extractelement <2 x i64> %75, i32 0
  %160 = insertelement <4 x i64> %158, i64 %159, i32 2
  %161 = extractelement <2 x i64> %75, i32 1
  %162 = insertelement <4 x i64> %160, i64 %161, i32 3
  %163 = bitcast <4 x i64> %162 to <16 x i16>
  %164 = and <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, %163
  %165 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %164, <16 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>)
  %166 = add <8 x i32> <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, %154
  %167 = add <8 x i32> %166, %165
  %168 = lshr <8 x i32> %167, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %169 = bitcast <2 x i64> %78 to <16 x i8>
  %170 = shufflevector <16 x i8> %169, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %171 = extractelement <16 x i8> %65, i32 0
  %172 = insertelement <32 x i8> undef, i8 %171, i32 0
  %173 = extractelement <16 x i8> %65, i32 1
  %174 = insertelement <32 x i8> %172, i8 %173, i32 1
  %175 = extractelement <16 x i8> %65, i32 2
  %176 = insertelement <32 x i8> %174, i8 %175, i32 2
  %177 = extractelement <16 x i8> %65, i32 3
  %178 = insertelement <32 x i8> %176, i8 %177, i32 3
  %179 = extractelement <16 x i8> %65, i32 4
  %180 = insertelement <32 x i8> %178, i8 %179, i32 4
  %181 = extractelement <16 x i8> %65, i32 5
  %182 = insertelement <32 x i8> %180, i8 %181, i32 5
  %183 = extractelement <16 x i8> %65, i32 6
  %184 = insertelement <32 x i8> %182, i8 %183, i32 6
  %185 = extractelement <16 x i8> %65, i32 7
  %186 = insertelement <32 x i8> %184, i8 %185, i32 7
  %187 = extractelement <16 x i8> %65, i32 8
  %188 = insertelement <32 x i8> %186, i8 %187, i32 8
  %189 = extractelement <16 x i8> %65, i32 9
  %190 = insertelement <32 x i8> %188, i8 %189, i32 9
  %191 = extractelement <16 x i8> %65, i32 10
  %192 = insertelement <32 x i8> %190, i8 %191, i32 10
  %193 = extractelement <16 x i8> %65, i32 11
  %194 = insertelement <32 x i8> %192, i8 %193, i32 11
  %195 = extractelement <16 x i8> %65, i32 12
  %196 = insertelement <32 x i8> %194, i8 %195, i32 12
  %197 = extractelement <16 x i8> %65, i32 13
  %198 = insertelement <32 x i8> %196, i8 %197, i32 13
  %199 = extractelement <16 x i8> %65, i32 14
  %200 = insertelement <32 x i8> %198, i8 %199, i32 14
  %201 = extractelement <16 x i8> %65, i32 15
  %202 = insertelement <32 x i8> %200, i8 %201, i32 15
  %203 = extractelement <16 x i8> %170, i32 0
  %204 = insertelement <32 x i8> %202, i8 %203, i32 16
  %205 = extractelement <16 x i8> %170, i32 1
  %206 = insertelement <32 x i8> %204, i8 %205, i32 17
  %207 = extractelement <16 x i8> %170, i32 2
  %208 = insertelement <32 x i8> %206, i8 %207, i32 18
  %209 = extractelement <16 x i8> %170, i32 3
  %210 = insertelement <32 x i8> %208, i8 %209, i32 19
  %211 = extractelement <16 x i8> %170, i32 4
  %212 = insertelement <32 x i8> %210, i8 %211, i32 20
  %213 = extractelement <16 x i8> %170, i32 5
  %214 = insertelement <32 x i8> %212, i8 %213, i32 21
  %215 = extractelement <16 x i8> %170, i32 6
  %216 = insertelement <32 x i8> %214, i8 %215, i32 22
  %217 = extractelement <16 x i8> %170, i32 7
  %218 = insertelement <32 x i8> %216, i8 %217, i32 23
  %219 = extractelement <16 x i8> %170, i32 8
  %220 = insertelement <32 x i8> %218, i8 %219, i32 24
  %221 = extractelement <16 x i8> %170, i32 9
  %222 = insertelement <32 x i8> %220, i8 %221, i32 25
  %223 = extractelement <16 x i8> %170, i32 10
  %224 = insertelement <32 x i8> %222, i8 %223, i32 26
  %225 = extractelement <16 x i8> %170, i32 11
  %226 = insertelement <32 x i8> %224, i8 %225, i32 27
  %227 = extractelement <16 x i8> %170, i32 12
  %228 = insertelement <32 x i8> %226, i8 %227, i32 28
  %229 = extractelement <16 x i8> %170, i32 13
  %230 = insertelement <32 x i8> %228, i8 %229, i32 29
  %231 = extractelement <16 x i8> %170, i32 14
  %232 = insertelement <32 x i8> %230, i8 %231, i32 30
  %233 = extractelement <16 x i8> %170, i32 15
  %234 = insertelement <32 x i8> %232, i8 %233, i32 31
  %235 = bitcast <32 x i8> %234 to <16 x i16>
  %236 = and <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, %235
  %237 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %236, <16 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>)
  %238 = extractelement <2 x i64> %54, i32 0
  %239 = insertelement <4 x i64> undef, i64 %238, i32 0
  %240 = extractelement <2 x i64> %54, i32 1
  %241 = insertelement <4 x i64> %239, i64 %240, i32 1
  %242 = extractelement <2 x i64> %78, i32 0
  %243 = insertelement <4 x i64> %241, i64 %242, i32 2
  %244 = extractelement <2 x i64> %78, i32 1
  %245 = insertelement <4 x i64> %243, i64 %244, i32 3
  %246 = bitcast <4 x i64> %245 to <16 x i16>
  %247 = and <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, %246
  %248 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %247, <16 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>)
  %249 = add <8 x i32> <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, %237
  %250 = add <8 x i32> %249, %248
  %251 = lshr <8 x i32> %250, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %252 = call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %168, <8 x i32> %251)
  %253 = bitcast <2 x i64> %81 to <16 x i8>
  %254 = shufflevector <16 x i8> %253, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %255 = extractelement <16 x i8> %67, i32 0
  %256 = insertelement <32 x i8> undef, i8 %255, i32 0
  %257 = extractelement <16 x i8> %67, i32 1
  %258 = insertelement <32 x i8> %256, i8 %257, i32 1
  %259 = extractelement <16 x i8> %67, i32 2
  %260 = insertelement <32 x i8> %258, i8 %259, i32 2
  %261 = extractelement <16 x i8> %67, i32 3
  %262 = insertelement <32 x i8> %260, i8 %261, i32 3
  %263 = extractelement <16 x i8> %67, i32 4
  %264 = insertelement <32 x i8> %262, i8 %263, i32 4
  %265 = extractelement <16 x i8> %67, i32 5
  %266 = insertelement <32 x i8> %264, i8 %265, i32 5
  %267 = extractelement <16 x i8> %67, i32 6
  %268 = insertelement <32 x i8> %266, i8 %267, i32 6
  %269 = extractelement <16 x i8> %67, i32 7
  %270 = insertelement <32 x i8> %268, i8 %269, i32 7
  %271 = extractelement <16 x i8> %67, i32 8
  %272 = insertelement <32 x i8> %270, i8 %271, i32 8
  %273 = extractelement <16 x i8> %67, i32 9
  %274 = insertelement <32 x i8> %272, i8 %273, i32 9
  %275 = extractelement <16 x i8> %67, i32 10
  %276 = insertelement <32 x i8> %274, i8 %275, i32 10
  %277 = extractelement <16 x i8> %67, i32 11
  %278 = insertelement <32 x i8> %276, i8 %277, i32 11
  %279 = extractelement <16 x i8> %67, i32 12
  %280 = insertelement <32 x i8> %278, i8 %279, i32 12
  %281 = extractelement <16 x i8> %67, i32 13
  %282 = insertelement <32 x i8> %280, i8 %281, i32 13
  %283 = extractelement <16 x i8> %67, i32 14
  %284 = insertelement <32 x i8> %282, i8 %283, i32 14
  %285 = extractelement <16 x i8> %67, i32 15
  %286 = insertelement <32 x i8> %284, i8 %285, i32 15
  %287 = extractelement <16 x i8> %254, i32 0
  %288 = insertelement <32 x i8> %286, i8 %287, i32 16
  %289 = extractelement <16 x i8> %254, i32 1
  %290 = insertelement <32 x i8> %288, i8 %289, i32 17
  %291 = extractelement <16 x i8> %254, i32 2
  %292 = insertelement <32 x i8> %290, i8 %291, i32 18
  %293 = extractelement <16 x i8> %254, i32 3
  %294 = insertelement <32 x i8> %292, i8 %293, i32 19
  %295 = extractelement <16 x i8> %254, i32 4
  %296 = insertelement <32 x i8> %294, i8 %295, i32 20
  %297 = extractelement <16 x i8> %254, i32 5
  %298 = insertelement <32 x i8> %296, i8 %297, i32 21
  %299 = extractelement <16 x i8> %254, i32 6
  %300 = insertelement <32 x i8> %298, i8 %299, i32 22
  %301 = extractelement <16 x i8> %254, i32 7
  %302 = insertelement <32 x i8> %300, i8 %301, i32 23
  %303 = extractelement <16 x i8> %254, i32 8
  %304 = insertelement <32 x i8> %302, i8 %303, i32 24
  %305 = extractelement <16 x i8> %254, i32 9
  %306 = insertelement <32 x i8> %304, i8 %305, i32 25
  %307 = extractelement <16 x i8> %254, i32 10
  %308 = insertelement <32 x i8> %306, i8 %307, i32 26
  %309 = extractelement <16 x i8> %254, i32 11
  %310 = insertelement <32 x i8> %308, i8 %309, i32 27
  %311 = extractelement <16 x i8> %254, i32 12
  %312 = insertelement <32 x i8> %310, i8 %311, i32 28
  %313 = extractelement <16 x i8> %254, i32 13
  %314 = insertelement <32 x i8> %312, i8 %313, i32 29
  %315 = extractelement <16 x i8> %254, i32 14
  %316 = insertelement <32 x i8> %314, i8 %315, i32 30
  %317 = extractelement <16 x i8> %254, i32 15
  %318 = insertelement <32 x i8> %316, i8 %317, i32 31
  %319 = bitcast <32 x i8> %318 to <16 x i16>
  %320 = and <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, %319
  %321 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %320, <16 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>)
  %322 = extractelement <2 x i64> %57, i32 0
  %323 = insertelement <4 x i64> undef, i64 %322, i32 0
  %324 = extractelement <2 x i64> %57, i32 1
  %325 = insertelement <4 x i64> %323, i64 %324, i32 1
  %326 = extractelement <2 x i64> %81, i32 0
  %327 = insertelement <4 x i64> %325, i64 %326, i32 2
  %328 = extractelement <2 x i64> %81, i32 1
  %329 = insertelement <4 x i64> %327, i64 %328, i32 3
  %330 = bitcast <4 x i64> %329 to <16 x i16>
  %331 = and <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, %330
  %332 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %331, <16 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>)
  %333 = add <8 x i32> <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, %321
  %334 = add <8 x i32> %333, %332
  %335 = lshr <8 x i32> %334, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %336 = bitcast <2 x i64> %84 to <16 x i8>
  %337 = shufflevector <16 x i8> %336, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %338 = extractelement <16 x i8> %69, i32 0
  %339 = insertelement <32 x i8> undef, i8 %338, i32 0
  %340 = extractelement <16 x i8> %69, i32 1
  %341 = insertelement <32 x i8> %339, i8 %340, i32 1
  %342 = extractelement <16 x i8> %69, i32 2
  %343 = insertelement <32 x i8> %341, i8 %342, i32 2
  %344 = extractelement <16 x i8> %69, i32 3
  %345 = insertelement <32 x i8> %343, i8 %344, i32 3
  %346 = extractelement <16 x i8> %69, i32 4
  %347 = insertelement <32 x i8> %345, i8 %346, i32 4
  %348 = extractelement <16 x i8> %69, i32 5
  %349 = insertelement <32 x i8> %347, i8 %348, i32 5
  %350 = extractelement <16 x i8> %69, i32 6
  %351 = insertelement <32 x i8> %349, i8 %350, i32 6
  %352 = extractelement <16 x i8> %69, i32 7
  %353 = insertelement <32 x i8> %351, i8 %352, i32 7
  %354 = extractelement <16 x i8> %69, i32 8
  %355 = insertelement <32 x i8> %353, i8 %354, i32 8
  %356 = extractelement <16 x i8> %69, i32 9
  %357 = insertelement <32 x i8> %355, i8 %356, i32 9
  %358 = extractelement <16 x i8> %69, i32 10
  %359 = insertelement <32 x i8> %357, i8 %358, i32 10
  %360 = extractelement <16 x i8> %69, i32 11
  %361 = insertelement <32 x i8> %359, i8 %360, i32 11
  %362 = extractelement <16 x i8> %69, i32 12
  %363 = insertelement <32 x i8> %361, i8 %362, i32 12
  %364 = extractelement <16 x i8> %69, i32 13
  %365 = insertelement <32 x i8> %363, i8 %364, i32 13
  %366 = extractelement <16 x i8> %69, i32 14
  %367 = insertelement <32 x i8> %365, i8 %366, i32 14
  %368 = extractelement <16 x i8> %69, i32 15
  %369 = insertelement <32 x i8> %367, i8 %368, i32 15
  %370 = extractelement <16 x i8> %337, i32 0
  %371 = insertelement <32 x i8> %369, i8 %370, i32 16
  %372 = extractelement <16 x i8> %337, i32 1
  %373 = insertelement <32 x i8> %371, i8 %372, i32 17
  %374 = extractelement <16 x i8> %337, i32 2
  %375 = insertelement <32 x i8> %373, i8 %374, i32 18
  %376 = extractelement <16 x i8> %337, i32 3
  %377 = insertelement <32 x i8> %375, i8 %376, i32 19
  %378 = extractelement <16 x i8> %337, i32 4
  %379 = insertelement <32 x i8> %377, i8 %378, i32 20
  %380 = extractelement <16 x i8> %337, i32 5
  %381 = insertelement <32 x i8> %379, i8 %380, i32 21
  %382 = extractelement <16 x i8> %337, i32 6
  %383 = insertelement <32 x i8> %381, i8 %382, i32 22
  %384 = extractelement <16 x i8> %337, i32 7
  %385 = insertelement <32 x i8> %383, i8 %384, i32 23
  %386 = extractelement <16 x i8> %337, i32 8
  %387 = insertelement <32 x i8> %385, i8 %386, i32 24
  %388 = extractelement <16 x i8> %337, i32 9
  %389 = insertelement <32 x i8> %387, i8 %388, i32 25
  %390 = extractelement <16 x i8> %337, i32 10
  %391 = insertelement <32 x i8> %389, i8 %390, i32 26
  %392 = extractelement <16 x i8> %337, i32 11
  %393 = insertelement <32 x i8> %391, i8 %392, i32 27
  %394 = extractelement <16 x i8> %337, i32 12
  %395 = insertelement <32 x i8> %393, i8 %394, i32 28
  %396 = extractelement <16 x i8> %337, i32 13
  %397 = insertelement <32 x i8> %395, i8 %396, i32 29
  %398 = extractelement <16 x i8> %337, i32 14
  %399 = insertelement <32 x i8> %397, i8 %398, i32 30
  %400 = extractelement <16 x i8> %337, i32 15
  %401 = insertelement <32 x i8> %399, i8 %400, i32 31
  %402 = bitcast <32 x i8> %401 to <16 x i16>
  %403 = and <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, %402
  %404 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %403, <16 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>)
  %405 = extractelement <2 x i64> %60, i32 0
  %406 = insertelement <4 x i64> undef, i64 %405, i32 0
  %407 = extractelement <2 x i64> %60, i32 1
  %408 = insertelement <4 x i64> %406, i64 %407, i32 1
  %409 = extractelement <2 x i64> %84, i32 0
  %410 = insertelement <4 x i64> %408, i64 %409, i32 2
  %411 = extractelement <2 x i64> %84, i32 1
  %412 = insertelement <4 x i64> %410, i64 %411, i32 3
  %413 = bitcast <4 x i64> %412 to <16 x i16>
  %414 = and <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, %413
  %415 = call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %414, <16 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>)
  %416 = add <8 x i32> <i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192>, %404
  %417 = add <8 x i32> %416, %415
  %418 = lshr <8 x i32> %417, <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %419 = call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %335, <8 x i32> %418)
  %420 = call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %252, <16 x i16> %419)
  %421 = bitcast i8* %85 to <16 x i8>*
  %422 = bitcast <16 x i8>* %70 to <32 x i8>*
  store <32 x i8> %420, <32 x i8>* %422, align 16, !tbaa !2
  %423 = add i64 %46, 32
  %424 = add i64 %47, -2
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %45, !llvm.loop !8

; <label>:426:                                    ; preds = %45, %40
  %427 = phi i64 [ 0, %40 ], [ %423, %45 ]
  br i1 %38, label %491, label %428

; <label>:428:                                    ; preds = %426
  %429 = shl i64 %427, 2
  %430 = getelementptr inbounds i8, i8* %42, i64 %429
  %431 = bitcast i8* %430 to <2 x i64>*
  %432 = load <2 x i64>, <2 x i64>* %431, align 16, !tbaa !2, !alias.scope !5
  %433 = getelementptr inbounds i8, i8* %430, i64 16
  %434 = bitcast i8* %433 to <2 x i64>*
  %435 = load <2 x i64>, <2 x i64>* %434, align 16, !tbaa !2, !alias.scope !5
  %436 = getelementptr inbounds i8, i8* %430, i64 32
  %437 = bitcast i8* %436 to <2 x i64>*
  %438 = load <2 x i64>, <2 x i64>* %437, align 16, !tbaa !2, !alias.scope !5
  %439 = getelementptr inbounds i8, i8* %430, i64 48
  %440 = bitcast i8* %439 to <2 x i64>*
  %441 = load <2 x i64>, <2 x i64>* %440, align 16, !tbaa !2, !alias.scope !5
  %442 = getelementptr inbounds i8, i8* %43, i64 %427
  %443 = bitcast <2 x i64> %432 to <16 x i8>
  %444 = shufflevector <16 x i8> %443, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %445 = bitcast <16 x i8> %444 to <8 x i16>
  %446 = and <8 x i16> %445, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %447 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %446, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #8
  %448 = bitcast <2 x i64> %432 to <8 x i16>
  %449 = and <8 x i16> %448, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %450 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %449, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #8
  %451 = add <4 x i32> %447, <i32 8192, i32 8192, i32 8192, i32 8192>
  %452 = add <4 x i32> %451, %450
  %453 = lshr <4 x i32> %452, <i32 14, i32 14, i32 14, i32 14>
  %454 = bitcast <2 x i64> %435 to <16 x i8>
  %455 = shufflevector <16 x i8> %454, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %456 = bitcast <16 x i8> %455 to <8 x i16>
  %457 = and <8 x i16> %456, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %458 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %457, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #8
  %459 = bitcast <2 x i64> %435 to <8 x i16>
  %460 = and <8 x i16> %459, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %461 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %460, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #8
  %462 = add <4 x i32> %458, <i32 8192, i32 8192, i32 8192, i32 8192>
  %463 = add <4 x i32> %462, %461
  %464 = lshr <4 x i32> %463, <i32 14, i32 14, i32 14, i32 14>
  %465 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %453, <4 x i32> %464) #8
  %466 = bitcast <2 x i64> %438 to <16 x i8>
  %467 = shufflevector <16 x i8> %466, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %468 = bitcast <16 x i8> %467 to <8 x i16>
  %469 = and <8 x i16> %468, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %470 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %469, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #8
  %471 = bitcast <2 x i64> %438 to <8 x i16>
  %472 = and <8 x i16> %471, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %473 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %472, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #8
  %474 = add <4 x i32> %470, <i32 8192, i32 8192, i32 8192, i32 8192>
  %475 = add <4 x i32> %474, %473
  %476 = lshr <4 x i32> %475, <i32 14, i32 14, i32 14, i32 14>
  %477 = bitcast <2 x i64> %441 to <16 x i8>
  %478 = shufflevector <16 x i8> %477, <16 x i8> <i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %479 = bitcast <16 x i8> %478 to <8 x i16>
  %480 = and <8 x i16> %479, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %481 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %480, <8 x i16> <i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0, i16 9617, i16 0>) #8
  %482 = bitcast <2 x i64> %441 to <8 x i16>
  %483 = and <8 x i16> %482, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
  %484 = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %483, <8 x i16> <i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899, i16 1868, i16 4899>) #8
  %485 = add <4 x i32> %481, <i32 8192, i32 8192, i32 8192, i32 8192>
  %486 = add <4 x i32> %485, %484
  %487 = lshr <4 x i32> %486, <i32 14, i32 14, i32 14, i32 14>
  %488 = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %476, <4 x i32> %487) #8
  %489 = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %465, <8 x i16> %488) #8
  %490 = bitcast i8* %442 to <16 x i8>*
  store <16 x i8> %489, <16 x i8>* %490, align 16, !tbaa !2
  br label %491

; <label>:491:                                    ; preds = %428, %426
  %492 = getelementptr inbounds i8, i8* %42, i64 %3
  %493 = getelementptr inbounds i8, i8* %43, i64 %5
  %494 = add nuw i64 %41, 1
  %495 = icmp eq i64 %494, %2
  br i1 %495, label %496, label %40

; <label>:496:                                    ; preds = %491, %30
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
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: nounwind readnone
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #6

; Function Attrs: nounwind readnone
declare <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32>, <8 x i32>) #6

; Function Attrs: nounwind readnone
declare <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16>, <16 x i16>) #6

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "target-cpu"="skylake" }
attributes #3 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cmov,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mpx,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vpopcntdq,-clwb,-clzero,-fma4,-gfni,-ibt,-lwp,-mwaitx,-pku,-prefetchwt1,-rtm,-sha,-shstk,-sse4a,-tbm,-vaes,-vpclmulqdq,-xop" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "target-cpu"="skylake" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
