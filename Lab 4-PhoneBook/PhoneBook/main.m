#import<Foundation/Foundation.h>
#import "Phonecard.h"
#import "PhoneBook.h"

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
   
   //Object initialization
	Phonecard *card1 = [[Phonecard alloc] init];
	Phonecard *card2 = [[Phonecard alloc] init];
	Phonecard *card3 = [[Phonecard alloc] init];
	
	PhoneBook *book = [[PhoneBook alloc]init];//for Phonecardbook
	[book initialization];
   
   char str_name[50],str_email[50];
   int str_num;
   
    //Accepting user input
   printf("FIRST ENTRY--Enter the name: ");
   scanf("%s",str_name);
   printf("FIRST ENTRY--Enter the email ID: ");
   scanf("%s",str_email);
   printf("FIRST ENTRY--Enter the number:(9 digits only) ");
   scanf("%d",&str_num);
   
   NSString *name1 = [NSString stringWithUTF8String:str_name];
   NSString *email1 = [NSString stringWithUTF8String:str_email];
   
   //Setting user input	
	[card1 setName:name1];
	[card1 setEmail:email1];
	[card1 setNum:str_num];
   [book addEntry:card1]; //Adding Entry to the phonebook object
	
   
   printf("SECOND ENTRY--Enter the name: ");
   scanf("%s",str_name);
   printf("SECOND ENTRY--Enter the email ID: ");
   scanf("%s",str_email);
   printf("SECOND ENTRY--Enter the number:(9 digits only) ");
   scanf("%d",&str_num);
   
   NSString *name2 = [NSString stringWithUTF8String:str_name];
   NSString *email2 = [NSString stringWithUTF8String:str_email];
   	
	[card2 setName:name2];
	[card2 setEmail:email2];
	[card2 setNum:str_num];
   [book addEntry:card2];//Adding Entry to the phonebook object
	
	printf("THIRD ENTRY--Enter the name: ");
   scanf("%s",str_name);
   printf("THIRD ENTRY--Enter the email ID: ");
   scanf("%s",str_email);
   printf("THIRD ENTRY--Enter the number:(9 digits only) ");
   scanf("%d",&str_num);
   
   NSString *name3 = [NSString stringWithUTF8String:str_name];
   NSString *email3 = [NSString stringWithUTF8String:str_email];
   	
	[card3 setName:name3];
	[card3 setEmail:email3];
	[card3 setNum:str_num];
   [book addEntry:card3];//Adding Entry to the phonebook object

	NSLog(@"Entry for %@ deleted\n",name1);
   [book delEntry:card1]; //Delete Entry for object card1


	[book listAll]; //List all entries present
	
	[book countAll]; //count total number of entries
	
	[book searchWithName:@"Akshay"]; //Search for entry using NAME
	
	[pool release];
	
	return 0;
}
