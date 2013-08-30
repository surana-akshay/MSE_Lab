//Function Implementations for Employee.h
#import "Employee.h "

@implementation Employee

-(void)setName:(NSString *)newName
{
name =[[NSString alloc] initWithString: newName];
}

-(void)setDept:(NSString *)newDept
{
dept =[[NSString alloc] initWithString: newDept];
}

/*-(void)setEmpId:(NSNumber *)newEmpId
{
empId=[[NSNumber alloc] init];
empId =newEmpId;
}*/

-(void)setEmpId:(int )newEmpId
{
empId =newEmpId;
}

//Get methods
-(NSString *)name
{ return name;
}

-(NSString *)dept
{
return dept;
}

/*-(NSNumber *)empId{
return empId;
}*/
-(int)empId{
return empId;
}

@end