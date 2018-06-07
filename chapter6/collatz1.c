#include<stdio.h>

int main(int argc, char *argv[]){
	 	
    int n = 123;
    while(n != 1){
	   if (n % 2 == 1){
		   n = n * 3 + 1;
	       printf("n=%d\n",n);
	   }
	   else{
	       n = n / 2;
		   printf("n=%d\n",n);
	   }
		
	}
	printf("n=%d\n",n);
    return 0;
}
