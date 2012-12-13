//
//  AppDelegate.m
//  ipad
//
//  Created by Rubel toufiq on 12/11/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginVC-Landscape.h"
#import "MainController.h"
#import "RegisterVC_Landscape.h"
@implementation AppDelegate
@synthesize window = _window;
@synthesize login,mainApp,nav;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    

    // Override point for customization after application launch.
    //RegisterVC_Landscape *rvc  = [[RegisterVC_Landscape alloc] initWithNibName:@"RegisterVC_Landscape" bundle:nil];
    
    login = [[LoginVC_Landscape alloc] initWithNibName:@"LoginVC-Landscape" bundle:nil];
    nav = [[UINavigationController alloc] initWithRootViewController:login];
    nav.navigationBarHidden = YES;
    //root = [[MainController alloc] initWithNibName:@"MainController" bundle:nil];
    
    
    
    //[root presentViewController:rvc animated:YES completion:nil];

    //
    
    //[root startLoginView];
    
       
    self.window.rootViewController = nav;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
