#include<stdio.h>
int GetLeftOne(int n)
{
    int left_bit = n & (-n);
    int bits = 0;
    while(left_bit)
    {
        left_bit>>=1;
        bits+=1;
    }
    printf("the left 1 in position %x\n", bits);
    return bits;
}
int main()
{
    int (*getarea)(int) = GetLeftOne;
    int a;
    scanf("%d",&a);
    getarea(a);
    return 0;
}