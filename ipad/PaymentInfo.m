//
//  PaymentInfo.m
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "PaymentInfo.h"

@implementation PaymentInfo
@synthesize fieldSelectPaymentMethod;
@synthesize fieldSelectPaymentStatus;
@synthesize fieldSelectCardType;
@synthesize fieldCardNo;
@synthesize fieldCardHolder;
@synthesize fieldDateCardExp;
@synthesize fieldBankName;
@synthesize fieldBrachName;
@synthesize fieldSelectACType;
@synthesize fieldACNo;
@synthesize fieldACHolderName;
@synthesize fieldDateDOContract;
@synthesize fieldSelectContractPersonal;
@synthesize menuSelectCardType,menuSelectPaymentMethod,menuSelectACType,menuSelectPaymentStatus,menuSelectContractPersonal;
@synthesize dateCardExp,dateDOContract;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    menuSelectACType = [[PopupMenu alloc] init];
    menuSelectCardType = [[PopupMenu alloc] init];
    menuSelectContractPersonal = [[PopupMenu alloc] init];
    menuSelectPaymentMethod = [[PopupMenu alloc] init];
    menuSelectPaymentStatus = [[PopupMenu alloc] init];
    
    
    NSString* file = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"plist"];
    
    NSDictionary *dict = [NSDictionary  dictionaryWithContentsOfFile:file];
    NSArray * typeArray = [dict objectForKey:@"New item"];
    
    [menuSelectACType makeTableMenuIn:fieldSelectACType parentView:self.view withData:typeArray];
    
    [menuSelectCardType makeTableMenuIn:fieldSelectCardType parentView:self.view withData:typeArray];
    
    [menuSelectContractPersonal makeTableMenuIn:fieldSelectContractPersonal parentView:self.view withData:typeArray];
    
    [menuSelectPaymentMethod makeTableMenuIn:fieldSelectPaymentMethod parentView:self.view withData:typeArray];
    
    [menuSelectPaymentStatus makeTableMenuIn:fieldSelectPaymentStatus parentView:self.view withData:typeArray];
    
    
    dateCardExp = [[PopupMenu alloc] init];
    dateDOContract = [[PopupMenu alloc] init];
    
    
    [dateCardExp makedatePickerMenuIn:fieldDateCardExp parentView:self.view];
    
    [dateDOContract makedatePickerMenuIn:fieldDateDOContract parentView:self.view];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setFieldSelectPaymentMethod:nil];
    [self setFieldSelectPaymentStatus:nil];
    [self setFieldSelectCardType:nil];
    [self setFieldCardNo:nil];
    [self setFieldCardHolder:nil];
    [self setFieldDateCardExp:nil];
    [self setFieldBankName:nil];
    [self setFieldBrachName:nil];
    [self setFieldSelectACType:nil];
    [self setFieldACNo:nil];
    [self setFieldACHolderName:nil];
    [self setFieldDateDOContract:nil];
    [self setFieldSelectContractPersonal:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
