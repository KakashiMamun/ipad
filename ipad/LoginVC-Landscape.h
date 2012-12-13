//
//  LoginVC-Landscape.h
//  Parlour_Ipad
//
//  Created by Rubel toufiq on 12/6/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//
@protocol rootDelegate <NSObject>

@optional

-(void) dismissLoginView;

@end


#import <UIKit/UIKit.h>
#import "mainAppBoard.h"

@interface LoginVC_Landscape : UIViewController

@property (strong,nonatomic) id<rootDelegate> delegate;
@property (strong,nonatomic) mainAppBoard* m;

- (IBAction)registerViewCall:(id)sender;

- (IBAction)dismisLogin:(id)sender;


@end
