; ModuleID = './intro-to-llvmir/simple-example.cc'
source_filename = "./intro-to-llvmir/simple-example.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; @.str 是一个私有的、1字节对齐的地址，存储了一个14字节的常量字符串"%d Arguments\0A\00"，其中\0A表示换行，\00表示字符串的结束。  
@.str = private unnamed_addr constant [14 x i8] c"%d Arguments\0A\00", align 1  
; @.str.1 是一个私有的、1字节对齐的地址，存储了一个20字节的常量字符串"To Input Something\0A\00"，其中\0A表示换行，\00表示字符串的结束。  
@.str.1 = private unnamed_addr constant [20 x i8] c"To Input Something\0A\00", align 1  
  
define dso_local void @ToCall(i32 %0) #0 {  
  ; 定义一个本地函数ToCall，输入参数是一个32位整型，#0 表示一个 block。  
  call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %0)  
  ; 调用printf函数，将@.str字符串和输入参数的值作为格式化字符串和参数进行打印。  
  ret void  
  ; 返回值为void。  
}  
  
declare i32 @printf(i8*, ...) #1  
; 声明printf函数，输入参数是一个字符指针和可变参数，返回值为32位整型。
  
define dso_local i32 @main(i32 %0, i8** %1) #2 {  
  ; 定义函数main，输入参数是一个32位整型和一个字符指针的指针。
  %3 = alloca i32, align 4  
  %4 = alloca i8**, align 8  
  ; 在栈上分别分配4字节和8字节对齐的32位整型空间和字符指针的指针空间。  
  store i32 %0, i32* %3, align 4  
  ; 将输入参数%0存储到第一个分配的空间中。  
  store i8** %1, i8*** %4, align 8  
  ; 将输入参数%1存储到第二个分配的空间中。  
  %5 = load i32, i32* %3, align 4  
  ; 从分配的空间中加载输入参数%0的值。  
  %6 = icmp sgt i32 %5, 1  
  ; 比较加载的值和1的大小，如果大于1则跳转到标签%8，否则跳转到标签%10。  
  br i1 %6, label %7, label %9  
  
7:      ; CASE : if argc > 1                        
  %8 = load i32, i32* %3, align 4  
  ; 从分配的空间中加载输入参数%0的值。  
  call void @ToCall(i32 %8)  
  ; 调用ToCall函数，将加载的值作为参数传递。  
  br label %11  
  ; 跳转到标签%11  
  
9:      ; CASE : if argc <= 1                           
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))  
  ; 调用printf函数，将@.str.1字符串作为格式化字符串进行打印。  
  br label %11  
  ; 跳转到标签%11  
  
11:   ; return 0
ret i32 0
; 返回值为32位整型0。
}