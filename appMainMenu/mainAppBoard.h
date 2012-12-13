//
//  ViewController.h
//  splitViewControllerTest
//
//  Created by Rubel toufiq on 12/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Menu.h"
#import "clientInfoList.h"

@interface mainAppBoard : UIViewController<menuDelegate>

@property (strong, nonatomic) IBOutlet UIView *menuView;
@property (weak, nonatomic) IBOutlet UIView *mainboardView;

@property (strong, nonatomic) IBOutlet UINavigationBar *mainBoardBar;

@property (strong,nonatomic) Menu* menuTable;
@property (strong, nonatomic) clientInfoList* clientInfoTable;
@property (strong, nonatomic) UINavigationController *navController;


@end
