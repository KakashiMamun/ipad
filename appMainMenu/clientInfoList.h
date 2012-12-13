//
//  clientInfoList.h
//  splitViewControllerTest
//
//  Created by Rubel toufiq on 12/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "clientInfoDetailsView.h"
@interface clientInfoList : UITableViewController {
    
	NSMutableArray * listOfClient;
    
}

@property (nonatomic, strong) NSMutableArray *listOfClient;
@property (nonatomic,strong) clientInfoDetailsView * detailView;
@end
