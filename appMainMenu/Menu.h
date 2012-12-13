//
//  MasterViewController.h
//  iPadHelloWorld
//
//  Created by Brandon Trebitowski on 2/1/10.
//  Copyright RightSprite 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol menuDelegate <NSObject>

@required

-(void)setClientInfoTable;
-(void)freeAllViewControllers;;
-(void)changeBoardTitle:(NSString*) title;
@end

@interface Menu : UITableViewController {
    
    id <menuDelegate> caller;
	NSMutableArray * listOfMenuItems;
    
}
@property (nonatomic, retain) NSMutableArray *listOfMenuItems;
@property (nonatomic, strong) id<menuDelegate> caller;
@end

