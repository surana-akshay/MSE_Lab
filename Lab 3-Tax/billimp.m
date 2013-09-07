#import<Foundation/Foundation.h>
#import "bill.h"

@implementation Bill
@synthesize type,amount,totalTax;

//using totalTax=totalTax+... because when calling kst and cst the previous tax amt must also be added to current tax
//Not required while calculating Vat
-(void)calculateVat
{
	totalTax = totalTax+amount*0.08;
}

- (void)calculateKst
{
  totalTax = totalTax+amount*0.14;
}

- (void)calculateCst
{
   totalTax = totalTax+amount*0.04;

}
//to select whether to calculate Vat or Cst and Kst
-(void)taxCalculator:(Bill*) bill
{
   NSString *type1=[[NSString alloc]init];
   type1=[bill type];
  
   if([type1 isEqualToString:@"finished"])
   {
       [self calculateVat];
       totalAmount=amount+totalTax;
       [self print];
   }
   else if([type1 isEqualToString:@"grocery"])
   {
      [self calculateKst]; 
      [self calculateCst];
       totalAmount=amount+totalTax;
      [self print];
   }
   else
   {
   NSLog(@"Wrong Entry.Restart Program\n");
   }
 
}
//printing total tax and total payable amount
-(void)print
{
   NSLog(@"The total tax is %.2f",totalTax);
   NSLog(@"The total bill amount is %.2f",totalAmount);
}

@end