//header file for program which accepts 2 numbers and does arithemetic calculations
#import<Foundation/Foundation.h>

@interface Calculator:NSObject
{	//variables to store 2 numbers
	double num1; 
	double num2;
}
//function to set numbers
-(void)setNum1:(double)num; 
-(void)setNum2:(double)num;

//functions to perform operations
-(double)add;
-(double)sub;
-(double)mul;
-(double)div;

@end

