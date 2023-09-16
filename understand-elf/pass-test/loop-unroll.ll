; ModuleID = './understand-elf/pass-test/loop-unroll.bc'
source_filename = "./understand-elf/matmul-v2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %7, %0
  %2 = phi i64 [ 0, %0 ], [ %9, %7 ]
  %3 = trunc i64 %2 to i32
  %4 = trunc i64 %2 to i16
  %5 = urem i16 %4, 13
  %6 = zext i16 %5 to i32
  br label %11

7:                                                ; preds = %11
  %8 = tail call i32 @putchar(i32 10)
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 1000
  br i1 %10, label %19, label %1, !llvm.loop !5

11:                                               ; preds = %11, %1
  %12 = phi i32 [ 0, %1 ], [ %17, %11 ]
  %13 = add nuw nsw i32 %12, %3
  %14 = urem i32 %13, 20
  %15 = mul nuw nsw i32 %14, %6
  %16 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %15)
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, 1000
  br i1 %18, label %7, label %11, !llvm.loop !7

19:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
