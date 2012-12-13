//
//  AppDelegate.h
//  ipad
//
//  Created by Rubel toufiq on 12/11/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) LoginVC_Landscape *login;
@property (strong,nonatomic) mainAppBoard* mainApp;
@property (strong,nonatomic) UINavigationController* nav;
@end
