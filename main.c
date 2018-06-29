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
