; ModuleID = 'sqrt_O1.ll'
source_filename = "sqrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @add_i8(i8* noalias nocapture, i8* noalias nocapture readonly) local_unnamed_addr #0 {
  %3 = bitcast i8* %0 to <2 x i64>*
  %4 = bitcast i8* %1 to <2 x i64>*
  br label %6

; <label>:5:                                      ; preds = %6
  ret void

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %12, %6 ]
  %8 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 %7
  %9 = bitcast <2 x i64>* %8 to <2 x double>*
  %10 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 %7
  %11 = bitcast <2 x i64>* %10 to <2 x double>*
  %12 = add nuw nsw i64 %7, 1
  %13 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 %12
  %14 = bitcast <2 x i64>* %13 to <2 x double>*
  %15 = bitcast <2 x double>* %9 to <4 x double>*
  %16 = load <4 x double>, <4 x double>* %15, align 16, !tbaa !2
  %17 = call <4 x double> @llvm.x86.avx.sqrt.pd.256(<4 x double> %16)
  %18 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 %12
  %19 = bitcast <2 x i64>* %18 to <2 x double>*
  %20 = bitcast <2 x double>* %11 to <4 x double>*
  store <4 x double> %17, <4 x double>* %20, align 16, !tbaa !2
  %21 = icmp eq i64 %12, 50
  br i1 %21, label %5, label %6
}

; Function Attrs: nounwind readnone
declare <2 x double> @llvm.x86.sse2.sqrt.pd(<2 x double>) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.x86.avx.sqrt.pd.256(<4 x double>) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="skylake" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "target-cpu"="skylake" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-svn326550-1~exp1~20180305180131.61 (branches/release_60)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
