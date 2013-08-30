//Header file for "printing message program"
#import<Foundation/Foundation.h>
@interface hello:NSObject{
char buffer[100]; //A character array to store message
}

-addStringValue:(const char*)astring; //A function to accept message and store it into the above char array
-print; // To call printf

@end