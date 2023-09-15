/// @author 谢志颖
/// @date Last Modify 2023.9.14
#ifndef N
#define N 1000
#endif
// define N 数据规模
#include<cstdio>
/// @brief 完成 N × 1 向量和N × N 大小矩阵的乘法
/// @return 0 正常退出
int main()
{
    auto matrix =  new int(N*N);
    auto vect = new int(N);
    for(int i=0;i<N;i++){
        vect[i] = i % 13;
        for(int j=0;j<N;j++){
            matrix[j] = (i+j)%20;
            matrix[i*N+j] = vect[i]*matrix[j];
            printf("%d ",matrix[i*N+j]);
        }
        printf("\n");
    }
    delete[]matrix;
    delete[]vect;
    return 0;
}
