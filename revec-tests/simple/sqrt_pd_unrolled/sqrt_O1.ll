; ModuleID = 'sqrt.c'
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
  %7 = phi i64 [ 0, %2 ], [ %14, %6 ]
  %8 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 %7
  %9 = bitcast <2 x i64>* %8 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 16, !tbaa !2
  %11 = tail call <2 x double> @llvm.x86.sse2.sqrt.pd(<2 x double> %10) #2
  %12 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 %7
  %13 = bitcast <2 x i64>* %12 to <2 x double>*
  store <2 x double> %11, <2 x double>* %13, align 16, !tbaa !2
  %14 = add nuw nsw i64 %7, 1
  %15 = getelementptr inbounds <2 x i64>, <2 x i64>* %4, i64 %14
  %16 = bitcast <2 x i64>* %15 to <2 x double>*
  %17 = load <2 x double>, <2 x double>* %16, align 16, !tbaa !2
  %18 = tail call <2 x double> @llvm.x86.sse2.sqrt.pd(<2 x double> %17) #2
  %19 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 %14
  %20 = bitcast <2 x i64>* %19 to <2 x double>*
  store <2 x double> %18, <2 x double>* %20, align 16, !tbaa !2
  %21 = icmp eq i64 %14, 50
  br i1 %21, label %5, label %6
}

; Function Attrs: nounwind readnone
declare <2 x double> @llvm.x86.sse2.sqrt.pd(<2 x double>) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-svn326550-1~exp1~20180305180131.61 (branches/release_60)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
