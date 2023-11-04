#include<stdio.h>
int main()
{
    FILE* addd = fopen("add.s","a");
    fprintf(addd,"%s","itis");
    fflush(addd);
    fclose(addd);
    return 0;
}