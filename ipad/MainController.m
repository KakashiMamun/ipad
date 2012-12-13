//
//  MainController.m
//  ipad
//
//  Created by Rubel toufiq on 12/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainController.h"
#import "mainAppBoard.h"

@implementation MainController

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
	return YES;
}

-(void) startLoginView{
    
        LoginVC_Landscape *rvc = [[LoginVC_Landscape alloc] initWithNibName:@"LoginVC-Landscape" bundle:nil];
    rvc.delegate = self;
    
    [self
     presentViewController:rvc animated:YES completion:nil];
    
}

-(void)dismissLoginView{
    
    [self dismissModalViewControllerAnimated:YES];
    
    mainAppBoard * m = [[mainAppBoard alloc] initWithNibName:@"mainBoard" bundle:nil];
    
    [self presentViewController:m animated:YES completion:nil];
}

@end
