#include<stdio.h>
#include<omp.h>

int main()
{
	#pragma omp parallel 
	{
            printf("Parallel hello to you!\n");
	}
   return 0;
         
}

