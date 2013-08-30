//main program
#import<Foundation/Foundation.h>
#import "hello.h"

int main(int argc,const char *argv[])
{
hello *hell=[[hello alloc]init]; //creating an object instance for hello
[hell addStringValue:"Hello!"]; //calling the function with parameter "Hello!".Will be assigned to variable buffer.
[hell print]; //calling print function to print value of buffer
[hell release]; //releasing object to free allocated space
return 0;
} 