//Header file for program which accepts and displays Employee details
#import<Foundation/Foundation.h>
@interface Employee:NSObject{
NSString *name;  //For Employee name	
NSString *dept;	 //For Employee dept
int empId;		 //For Employee Id


}

//Functions to set the above variables
-(void)setName:(NSString *)newName;
-(void)setDept:(NSString *)newDept;
-(void)setEmpId:(int)newEmpId;

//get methods
-(NSString *)name;
-(NSString *)dept;
-(int)empId;
@end