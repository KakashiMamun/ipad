//
//  StoreInfo.m
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "StoreInfo.h"

@implementation StoreInfo
@synthesize fieldSelectTrainLine;
@synthesize fieldNearest;
@synthesize fieldSelectArea;
@synthesize fieldPostalCode;
@synthesize fieldSelectDistrict;
@synthesize fieldSelectCity;
@synthesize fieldAdrs1;
@synthesize fieldAdrs2;
@synthesize fieldBuildingName;
@synthesize fieldRoomNo;
@synthesize fieldFloorNo;
@synthesize fieldStorePhone;
@synthesize fieldStoreFAX;
@synthesize fieldStoreMobile;
@synthesize menuSelectArea,menuSelectCity,menuSelectDistrict,menuSelectTrainLine;

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
    
    menuSelectArea = [[PopupMenu alloc] init];
    menuSelectCity = [[PopupMenu alloc] init];
    
    menuSelectDistrict = [[PopupMenu alloc] init];
    menuSelectTrainLine = [[PopupMenu alloc] init];
    
    
    NSString* file = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"plist"];
    
    NSDictionary *dict = [NSDictionary  dictionaryWithContentsOfFile:file];
    NSArray * typeArray = [dict objectForKey:@"New item"];
    
    [menuSelectArea makeTableMenuIn:fieldSelectArea parentView:self.view withData:typeArray];
    
    [menuSelectCity makeTableMenuIn:fieldSelectCity parentView:self.view withData:typeArray];
    
    [menuSelectDistrict makeTableMenuIn:fieldSelectDistrict parentView:self.view withData:typeArray];
    
    [menuSelectTrainLine makeTableMenuIn:fieldSelectTrainLine parentView:self.view withData:typeArray];
    
   
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setFieldSelectTrainLine:nil];
    [self setFieldNearest:nil];
    [self setFieldSelectArea:nil];
    [self setFieldPostalCode:nil];
    [self setFieldSelectDistrict:nil];
    [self setFieldSelectCity:nil];
    [self setFieldAdrs1:nil];
    [self setFieldAdrs2:nil];
    [self setFieldBuildingName:nil];
    [self setFieldRoomNo:nil];
    [self setFieldFloorNo:nil];
    [self setFieldStorePhone:nil];
    [self setFieldStoreFAX:nil];
    [self setFieldStoreMobile:nil];
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
