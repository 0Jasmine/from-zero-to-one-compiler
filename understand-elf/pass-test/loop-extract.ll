; ModuleID = './understand-elf/pass-test/loop-extract.bc'
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
  br label %codeRepl

7:                                                ; preds = %codeRepl
  %8 = tail call i32 @putchar(i32 10)
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 1000
  br i1 %10, label %11, label %1, !llvm.loop !5

codeRepl:                                         ; preds = %1
  call void @main.extracted(i32 %3, i32 %6)
  br label %7

11:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse uwtable
define internal void @main.extracted(i32 %0, i32 %1) #0 {
newFuncRoot:
  br label %2

2:                                                ; preds = %newFuncRoot, %2
  %3 = phi i32 [ 0, %newFuncRoot ], [ %8, %2 ]
  %4 = add nuw nsw i32 %3, %0
  %5 = urem i32 %4, 20
  %6 = mul nuw nsw i32 %5, %1
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %6)
  %8 = add nuw nsw i32 %3, 1
  %9 = icmp eq i32 %8, 1000
  br i1 %9, label %.exitStub, label %2, !llvm.loop !7

.exitStub:                                        ; preds = %2
  ret void
}

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
