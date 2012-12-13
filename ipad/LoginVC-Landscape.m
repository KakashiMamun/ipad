//
//  LoginVC-Landscape.m
//  Parlour_Ipad
//
//  Created by Rubel toufiq on 12/6/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "LoginVC-Landscape.h"
#import "RegisterVC_Landscape.h"
#import "mainAppBoard.h"
@implementation LoginVC_Landscape

@synthesize delegate,m;

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
 
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (IBAction)registerViewCall:(id)sender {
    
    RegisterVC_Landscape *rvc = [[RegisterVC_Landscape alloc] initWithNibName:@"RegisterVC_Landscape" bundle:nil];
    
    [self presentViewController:rvc animated:YES completion:nil];
    
    
}

- (IBAction)dismisLogin:(id)sender {

    m =[[mainAppBoard alloc] initWithNibName:@"mainAppBoard" bundle:nil];
    
    [self.navigationController pushViewController:m animated:YES];
}
@end
