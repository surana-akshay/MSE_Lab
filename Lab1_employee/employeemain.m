//Main file
#import<Foundation/Foundation.h>
#import "Employee.m"
#include<stdio.h>

int main(int argc, const char* argv[]){


int num;
Employee *myEmp = [[Employee alloc] init]; //Object Initialization
/*
NSLog(@"\nEnter name:");
scanf("%s",&name1);
NSLog(@"\nEnter dept:");
scanf("%s",&dept1);
*/
NSLog(@"\nEnter id:");
scanf("%d",&num);

[myEmp setEmpId:num]; //Setting Employee ID
NSLog(@"Employee details:%d",[myEmp empId]); //Displaying emp ID using get methods
[myEmp setName:@"surana"]; //Setting Employee name

[myEmp setDept:@"ise"]; //Setting Employee Dept

NSLog(@"Employee name:%@   Dept:%@",[myEmp name],[myEmp dept]); //Displaying Emp name and dept using get methods
[myEmp release];

return 0;}