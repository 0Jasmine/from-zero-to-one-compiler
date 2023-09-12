#ifndef N
#define N 10000
#endif
#include<iostream>
#include<memory>
int main()
{
    auto matrix =  std::make_unique<int[]>(N*N);
    auto vect = std::make_unique<int[]>(N);
    for(int i=0;i<N;i++){
        vect[i] = i % 13;
        for(int j=0;j<N;j++){
            matrix[j] = (i+j)%20;
            matrix[i*N+j] = vect[i]*matrix[j];
            std::cout<< matrix[i*N+j] << ' ';
        }
        std::cout<< std::endl;
    }
    return 0;
}
