//Main program
#import "Calculator.m"
#import<Foundation/Foundation.h>
#include<stdio.h>

int main(int argc, char *argv[])
{
	double num1, num2;
	Calculator *calc = [[Calculator alloc]init]; //Object creation
	NSLog(@"\nEnter 2 numbers:\n");
	scanf("%lf%lf", &num1, &num2); //Accepting 2 numbers in local variables

	[calc setNum1:num1]; //Setting the numbers using function calls
	[calc setNum2:num2];
	
	//Calling the arithemetic functions on the above 2 numbers

	NSLog(@"%.4lf + %.4lf = %lf", num1, num2, [calc add]);
	NSLog(@"%.4lf - %.4lf = %lf", num1, num2, [calc sub]);
	NSLog(@"%.4lf * %.4lf = %lf", num1, num2, [calc mul]);
	NSLog(@"%.4lf / %.4lf = %lf", num1, num2, [calc div]);
	[calc release];
	return 0;
}