//
//  ViewController.m
//  splitViewControllerTest
//
//  Created by Rubel toufiq on 12/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "mainAppBoard.h"

@implementation mainAppBoard
{
    BOOL menuBarisVisible;
}
@synthesize menuView;
@synthesize mainboardView;
@synthesize mainBoardBar;
@synthesize menuTable,clientInfoTable;
@synthesize navController;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    menuTable = [[Menu alloc] init];
    menuTable.view.frame = menuView.bounds ;
    menuTable.caller = self;
    [self.menuView addSubview:menuTable.view];
    menuBarisVisible = YES;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMenuView:nil];
    [self setMainboardView:nil];
    [self setMainBoardBar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(void)setClientInfoTable{
    
    clientInfoTable = [[clientInfoList alloc] init];
    
    navController = [[UINavigationController alloc] initWithRootViewController:clientInfoTable]; 
    navController.navigationBarHidden = YES;
    navController.view.frame = mainboardView.bounds;
    clientInfoTable.view.frame = navController.view.bounds;
    
    [UIView animateWithDuration:0.5 delay:0.3 options:UIViewAnimationCurveEaseIn animations:^{
        
        [self.mainboardView addSubview:navController.view];
    }
                     completion:NULL];
    //[self.mainboardView addSubview:navController.view];
}

-(void)freeAllViewControllers{
    
    [self.clientInfoTable.view removeFromSuperview];
    self.clientInfoTable = nil;
}

-(void)changeBoardTitle:(NSString*) title{
    
    self.mainBoardBar.topItem.title = title;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}



@end
