#include<stdio.h>
#include<omp.h>

int main()
{
	omp_set_num_threads(4);
	#pragma omp parallel 
	{
            printf("Parallel hello to you!\n");
	}
   return 0;
         
}

