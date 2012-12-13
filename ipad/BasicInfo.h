//
//  BasicInfo.h
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopupMenu.h"
@interface BasicInfo : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *fieldSelectBusinessType;
@property (strong,nonatomic) PopupMenu *menuSelectBusiness;
@property (strong, nonatomic) IBOutlet UITextField *fieldIntroducersName;
@property (strong, nonatomic) IBOutlet UITextField *fieldSelectOpStatus;
@property (strong,nonatomic) PopupMenu *menuSelectOpStatus;
@property (strong, nonatomic) IBOutlet UITextField *fieldStoreName;
@property (strong, nonatomic) IBOutlet UITextField *fieldOwnerName;
@property (strong, nonatomic) IBOutlet UITextField *fieldRegEmail;



@end
