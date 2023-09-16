; ModuleID = './understand-elf/pass-test/loop-reduce.bc'
source_filename = "./understand-elf/matmul-v2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %6, %0
  %2 = phi i64 [ 0, %0 ], [ %8, %6 ]
  %lsr5 = trunc i64 %2 to i32
  %3 = trunc i64 %2 to i16
  %4 = urem i16 %3, 13
  %5 = zext i16 %4 to i32
  br label %10

6:                                                ; preds = %10
  %7 = tail call i32 @putchar(i32 10)
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 1000
  br i1 %9, label %17, label %1, !llvm.loop !5

10:                                               ; preds = %10, %1
  %lsr.iv3 = phi i32 [ %lsr.iv.next4, %10 ], [ %lsr5, %1 ]
  %lsr.iv = phi i32 [ %lsr.iv.next, %10 ], [ 1000, %1 ]
  %11 = udiv i32 %lsr.iv3, 20
  %12 = mul nuw i32 %11, 20
  %13 = sub i32 %lsr.iv3, %12
  %14 = mul nuw nsw i32 %13, %5
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %14)
  %lsr.iv.next = add nsw i32 %lsr.iv, -1
  %lsr.iv.next4 = add nuw nsw i32 %lsr.iv3, 1
  %16 = icmp eq i32 %lsr.iv.next, 0
  br i1 %16, label %6, label %10, !llvm.loop !7

17:                                               ; preds = %6
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
