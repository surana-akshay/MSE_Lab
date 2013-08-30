//Header file for Displaying Employee details using Property and Synthesize
#import<Foundation/Foundation.h>
@interface Employee:NSObject{
NSString *name; //For Employee name	
NSString *dept;  //For Employee dept
int empId;  //For Employee Id

}
//Using property and Synthesize to set and get details
@property NSString *name;
@property NSString *dept;
@property int empId;


@end