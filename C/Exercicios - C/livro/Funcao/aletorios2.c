#include<stdio.h>
#include<stdlib.h>

/*

*/

int main(){

int i; 
unsigned int seed;

    //printf("Digite a semente ");
    //scanf("%d", &seed);

srand(time(NULL));
for ( i = 1; i <= 10; i++)
{
    printf("%10d",1 +(rand() % 6));
    if (i % 5 == 0)
    {
        printf("\n");
    }
    
}

 return 0;
}