#import "Phonecard.h"

@implementation Phonecard

@synthesize name, email, num;

-(void)print
{
	NSLog(@"\nName: %@\nEmail: %@\nPhone Number: %d\n\n", name, email, num);
}

@end