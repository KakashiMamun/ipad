//
//  BasicInfo.m
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "BasicInfo.h"

@implementation BasicInfo
@synthesize fieldSelectBusinessType;
@synthesize fieldIntroducersName;
@synthesize fieldSelectOpStatus;
@synthesize fieldStoreName;
@synthesize fieldOwnerName;
@synthesize fieldRegEmail;

@synthesize menuSelectBusiness,menuSelectOpStatus;

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
    
    menuSelectOpStatus = [[PopupMenu alloc] init];
    menuSelectBusiness = [[PopupMenu alloc] init];
    
    
    NSString* file = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"plist"];
    
    NSDictionary *dict = [NSDictionary  dictionaryWithContentsOfFile:file];
    NSArray * typeArray = [dict objectForKey:@"New item"];
    
    [menuSelectBusiness makeTableMenuIn:fieldSelectBusinessType parentView:self.view withData:typeArray];
    [menuSelectOpStatus makeTableMenuIn:fieldSelectOpStatus parentView:self.view withData:typeArray];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setFieldSelectBusinessType:nil];
    [self setFieldIntroducersName:nil];
    [self setFieldSelectOpStatus:nil];
    [self setFieldStoreName:nil];
    [self setFieldOwnerName:nil];
    [self setFieldRegEmail:nil];
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
