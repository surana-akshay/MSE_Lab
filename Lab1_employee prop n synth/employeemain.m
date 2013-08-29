//Main file
#import<Foundation/Foundation.h>
#import "Employee.m"
#include<stdio.h>

int main(int argc, const char* argv[]){

int num;
Employee *myEmp = [[Employee alloc] init];//Object initialiazation

NSLog(@"\nEnter id:");
scanf("%d",&num);

[myEmp setEmpId:num];//Setting Employee ID
NSLog(@"Employee id:%d",[myEmp empId]); //Displaying Employee ID

[myEmp setName:@"surana"];//Setting Employee name
[myEmp setDept:@"is"];//Setting Employee dept


NSLog(@"Employee name:%@   Employee dept: %@",[myEmp name],[myEmp dept]); //Displaying Employee name and dept 
[myEmp release];

return 0;}