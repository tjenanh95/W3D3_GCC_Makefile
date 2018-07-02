/*
#include <stdio.h>

int main()
{
   int first, second, sum, subtract;
 
   printf("nhap hai so:\n");
   scanf("%d %d", &first, &second);
 
   sum = first + second;
   subtract = first - second;

   printf("sum = %d\n", sum);
   printf("subtract = %d\n", subtract);

   return 0;
}
*/
#include <stdio.h>
#include "src/sum.h"
#include "src/subtract.h"

int main() 
{
	int first, second, sum, subtract;

	scanf("%d %d", &first, &second);

	sum = mysum(first, second);
	subtract = mysubtract(first, second);

	printf("sum = %d\n", sum);
	printf("subtract = %d\n", subtract);

  	return 0;
}

