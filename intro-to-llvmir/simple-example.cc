/// @author Jasmine Xie
#include<stdio.h>
void ToCall(int n){
    printf("%d Arguments\n",n);
}
/// @brief 简单的一个程序 使用condition语句判断命令行传入参数的个数
/// 进行跳转
/// @param argc 参数个数
/// @param argv 参数数组
/// @return 正常退出返回 0
int main(int argc, char const *argv[])
{
    if(argc>1){
        ToCall(argc);
    }else{
        printf("To Input Something\n");
    }
    return 0;
}
