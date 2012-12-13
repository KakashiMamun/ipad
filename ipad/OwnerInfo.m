//
//  OwnerInfo.m
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "OwnerInfo.h"

@implementation OwnerInfo
@synthesize fieldOwnerPostalCode;
@synthesize fieldOwnerState;
@synthesize fieldOwnerCity;
@synthesize fieldOwnerAddrss1;
@synthesize fieldOwnerAddress2;
@synthesize fieldOwnerBuildingNo;
@synthesize fieldOwnerRoomNo;
@synthesize fieldOwnerFloorNo;
@synthesize fieldOwnerEmail;
@synthesize fieldOwnerPhone;
@synthesize fieldOwnerFax;
@synthesize fieldOwnerMobile;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setFieldOwnerPostalCode:nil];
    [self setFieldOwnerState:nil];
    [self setFieldOwnerCity:nil];
    [self setFieldOwnerAddrss1:nil];
    [self setFieldOwnerAddress2:nil];
    [self setFieldOwnerBuildingNo:nil];
    [self setFieldOwnerRoomNo:nil];
    [self setFieldOwnerFloorNo:nil];
    [self setFieldOwnerEmail:nil];
    [self setFieldOwnerPhone:nil];
    [self setFieldOwnerFax:nil];
    [self setFieldOwnerMobile:nil];
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
