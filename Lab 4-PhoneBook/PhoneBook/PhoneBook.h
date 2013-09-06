#import<Foundation/Foundation.h>

@interface PhoneBook: NSObject
{
	NSMutableArray *arr;//Muteable so that add and delete can be performed
}


-(void)initialization;

-(void)addEntry:(id)obj;

-(void)delEntry:(id)obj;

-(void)listAll;

-(void)countAll;

-(void)searchWithName:(NSString *)nm;

@end	
