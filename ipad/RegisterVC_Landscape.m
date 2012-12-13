//
//  RegisterVC_Landscape.m
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "RegisterVC_Landscape.h"
#import "BasicInfo.h"
#import "StoreInfo.h"
#import "OwnerInfo.h"
#import "PaymentInfo.h"
@implementation RegisterVC_Landscape  {
    
    int currentViewPanel;
    NSMutableArray * panelViews;
    UISwipeGestureRecognizer *sg;
}


@synthesize ContainerView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self->panelViews = [NSMutableArray array];
        [self->panelViews addObject: [[BasicInfo alloc] initWithNibName:@"BasicInfo" bundle:nil]];
        [self->panelViews addObject: [[StoreInfo alloc] initWithNibName:@"StoreInfo" bundle:nil]];
        [self->panelViews addObject: [[OwnerInfo alloc] initWithNibName:@"OwnerInfo" bundle:nil]];
        [self->panelViews addObject: [[PaymentInfo alloc] initWithNibName:@"PaymentInfo" bundle:nil]];        
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
   
   currentViewPanel = 0;
    UIViewController* vc = [self->panelViews objectAtIndex:currentViewPanel];
    [self addChildViewController:vc]; // "will" called for us
    vc.view.frame = self.ContainerView.bounds;
    [self.ContainerView addSubview: vc.view]; // insert view into interface between "will" and "did"
    // note: when we call add, we must call "did" afterwards
    [vc didMoveToParentViewController:self];
    
   

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


          
- (IBAction)changeView:(id)sender {
    
    
    [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
    UIViewController* fromvc = [self->panelViews objectAtIndex:currentViewPanel];
    
    UIViewController* tovc = [self->panelViews objectAtIndex:++currentViewPanel];
    if(currentViewPanel>=3) currentViewPanel = 0;
    tovc.view.frame = self.ContainerView.bounds;
    
    // must have both as children before we can transition between them
    [self addChildViewController:tovc]; // "will" called for us
    // note: when we call remove, we must call "will" (with nil) beforehand
    [fromvc willMoveToParentViewController:nil];
    // then perform the transition
    [self transitionFromViewController:fromvc
                      toViewController:tovc
                              duration:0.3
                               options:UIViewAnimationOptionTransitionCurlUp
                            animations:nil
                            completion:^(BOOL done){
                                // finally, finish up
                                // note: when we call add, we must call "did" afterwards
                                [tovc didMoveToParentViewController:self];
                                [fromvc removeFromParentViewController]; // "did" called for us
                                [[UIApplication sharedApplication] endIgnoringInteractionEvents];
                            }];

}

- (IBAction)turnOnBasicInfoView:(id)sender {
    
    if(currentViewPanel !=0)
    {
        [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
        UIViewController* fromvc = [self->panelViews objectAtIndex:currentViewPanel];
        
        UIViewController* tovc = [self->panelViews objectAtIndex:0];
        currentViewPanel = 0;
        tovc.view.frame = self.ContainerView.bounds;
        
        // must have both as children before we can transition between them
        [self addChildViewController:tovc]; // "will" called for us
        // note: when we call remove, we must call "will" (with nil) beforehand
        [fromvc willMoveToParentViewController:nil];
        // then perform the transition
        [self transitionFromViewController:fromvc
                          toViewController:tovc
                                  duration:0.3
                                   options:UIViewAnimationOptionTransitionCurlUp
                                animations:nil
                                completion:^(BOOL done){
                                    // finally, finish up
                                    // note: when we call add, we must call "did" afterwards
                                    [tovc didMoveToParentViewController:self];
                                    [fromvc removeFromParentViewController]; // "did" called for us
                                    [[UIApplication sharedApplication] endIgnoringInteractionEvents];
                                }];
    }
    

}

- (IBAction)turnOnStoreInfoView:(id)sender {
    
    if(currentViewPanel !=1)
    {
        [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
        UIViewController* fromvc = [self->panelViews objectAtIndex:currentViewPanel];
        
        UIViewController* tovc = [self->panelViews objectAtIndex:1];
        currentViewPanel = 1;
        tovc.view.frame = self.ContainerView.bounds;
        
        // must have both as children before we can transition between them
        [self addChildViewController:tovc]; // "will" called for us
        // note: when we call remove, we must call "will" (with nil) beforehand
        [fromvc willMoveToParentViewController:nil];
        // then perform the transition
        [self transitionFromViewController:fromvc
                          toViewController:tovc
                                  duration:0.3
                                   options:UIViewAnimationOptionTransitionCurlUp
                                animations:nil
                                completion:^(BOOL done){
                                    // finally, finish up
                                    // note: when we call add, we must call "did" afterwards
                                    [tovc didMoveToParentViewController:self];
                                    [fromvc removeFromParentViewController]; // "did" called for us
                                    [[UIApplication sharedApplication] endIgnoringInteractionEvents];
                                }];
    }
    

    
}

- (IBAction)turnOnOwnersInfoView:(id)sender {
    
    if(currentViewPanel !=2)
    {
        [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
        UIViewController* fromvc = [self->panelViews objectAtIndex:currentViewPanel];
        
        UIViewController* tovc = [self->panelViews objectAtIndex:2];
        currentViewPanel = 2;
        tovc.view.frame = self.ContainerView.bounds;
        
        // must have both as children before we can transition between them
        [self addChildViewController:tovc]; // "will" called for us
        // note: when we call remove, we must call "will" (with nil) beforehand
        [fromvc willMoveToParentViewController:nil];
        // then perform the transition
        [self transitionFromViewController:fromvc
                          toViewController:tovc
                                  duration:0.3
                                   options:UIViewAnimationOptionTransitionCurlUp
                                animations:nil
                                completion:^(BOOL done){
                                    // finally, finish up
                                    // note: when we call add, we must call "did" afterwards
                                    [tovc didMoveToParentViewController:self];
                                    [fromvc removeFromParentViewController]; // "did" called for us
                                    [[UIApplication sharedApplication] endIgnoringInteractionEvents];
                                }];
    }
    

}

- (IBAction)turnOnPaymentInfoView:(id)sender {
    
    if(currentViewPanel !=3)
    {
        [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
        UIViewController* fromvc = [self->panelViews objectAtIndex:currentViewPanel];
        
        UIViewController* tovc = [self->panelViews objectAtIndex:3];
        currentViewPanel = 3;
        tovc.view.frame = self.ContainerView.bounds;
        
        // must have both as children before we can transition between them
        [self addChildViewController:tovc]; // "will" called for us
        // note: when we call remove, we must call "will" (with nil) beforehand
        [fromvc willMoveToParentViewController:nil];
        // then perform the transition
        [self transitionFromViewController:fromvc
                          toViewController:tovc
                                  duration:0.3
                                   options:UIViewAnimationOptionTransitionCurlUp
                                animations:nil
                                completion:^(BOOL done){
                                    // finally, finish up
                                    // note: when we call add, we must call "did" afterwards
                                    [tovc didMoveToParentViewController:self];
                                    [fromvc removeFromParentViewController]; // "did" called for us
                                    [[UIApplication sharedApplication] endIgnoringInteractionEvents];
                                }];
    }
    

}
- (IBAction)returnToLoginVC:(id)sender {
    
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}
@end
