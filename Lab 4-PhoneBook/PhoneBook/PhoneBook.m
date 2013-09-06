#import "PhoneBook.h"
#import "Phonecard.h"

@implementation PhoneBook


-(void)initialization
{
	arr = [[NSMutableArray alloc]init];
}	
	
-(void)addEntry:(id)obj
{
	NSLog(@"An entry has been added\n");
	[arr addObject:obj];
   [obj print];
}

-(void)delEntry:(id)obj
{
	if(arr!=nil)
	{  
		[arr removeObject:obj];
	}
	else
	{
		NSLog(@"Cannot perform Delete as the PhoneBook is empty.\n");
	}
}

-(void)listAll
{
	NSLog(@"The entries in the phone book are:\n");
	for(Phonecard *obj in arr)
	{
		[obj print];
	}
}

-(void)countAll
{
	int count = 0;
	for(Phonecard *obj in arr)
	{
		count += 1;
	}
	NSLog(@"Number of Entries: %d\n", count);;
}

-(void)searchWithName:(NSString *)nm
{
	int flag = 0;
	for(Phonecard *obj in arr)
	{
		if([obj.name caseInsensitiveCompare:nm] == NSOrderedSame)
		{
			flag = 1;
			NSLog(@"The entry for %@ exists.Details are:\n", nm);  
			[obj print];
		}
	}
	if(flag == 0)
	{
		NSLog(@"The entry for %@ doesnt exists\n", nm);  
	}	
}

@end
