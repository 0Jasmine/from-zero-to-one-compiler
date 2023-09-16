; ModuleID = './understand-elf/pass-test/reg2mem.bc'
source_filename = "./understand-elf/matmul-v2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %.reg2mem = alloca i32, align 4
  %.reg2mem3 = alloca i64, align 8
  %.reg2mem6 = alloca i32, align 4
  %.reg2mem8 = alloca i32, align 4
  %.reg2mem10 = alloca i64, align 8
  %.reg2mem14 = alloca i32, align 4
  %.reg2mem16 = alloca i64, align 8
  %"reg2mem alloca point" = bitcast i32 0 to i32
  store i64 0, i64* %.reg2mem16, align 8
  br label %1

1:                                                ; preds = %._crit_edge, %0
  %.reload17 = load i64, i64* %.reg2mem16, align 8
  store i64 %.reload17, i64* %.reg2mem10, align 8
  %.reload13 = load i64, i64* %.reg2mem10, align 8
  %2 = trunc i64 %.reload13 to i32
  store i32 %2, i32* %.reg2mem8, align 4
  %.reload12 = load i64, i64* %.reg2mem10, align 8
  %3 = trunc i64 %.reload12 to i16
  %4 = urem i16 %3, 13
  %5 = zext i16 %4 to i32
  store i32 %5, i32* %.reg2mem6, align 4
  store i32 0, i32* %.reg2mem14, align 4
  br label %10

6:                                                ; preds = %10
  %7 = tail call i32 @putchar(i32 10)
  %.reload11 = load i64, i64* %.reg2mem10, align 8
  %8 = add nuw nsw i64 %.reload11, 1
  store i64 %8, i64* %.reg2mem3, align 8
  %.reload4 = load i64, i64* %.reg2mem3, align 8
  %9 = icmp eq i64 %.reload4, 1000
  br i1 %9, label %17, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %6
  %.reload5 = load i64, i64* %.reg2mem3, align 8
  store i64 %.reload5, i64* %.reg2mem16, align 8
  br label %1

10:                                               ; preds = %._crit_edge1, %1
  %.reload15 = load i32, i32* %.reg2mem14, align 4
  %.reload9 = load i32, i32* %.reg2mem8, align 4
  %11 = add nuw nsw i32 %.reload15, %.reload9
  %12 = urem i32 %11, 20
  %.reload7 = load i32, i32* %.reg2mem6, align 4
  %13 = mul nuw nsw i32 %12, %.reload7
  %14 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %13)
  %15 = add nuw nsw i32 %.reload15, 1
  store i32 %15, i32* %.reg2mem, align 4
  %.reload = load i32, i32* %.reg2mem, align 4
  %16 = icmp eq i32 %.reload, 1000
  br i1 %16, label %6, label %._crit_edge1, !llvm.loop !7

._crit_edge1:                                     ; preds = %10
  %.reload2 = load i32, i32* %.reg2mem, align 4
  store i32 %.reload2, i32* %.reg2mem14, align 4
  br label %10

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
