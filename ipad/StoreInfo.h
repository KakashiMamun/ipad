//
//  StoreInfo.h
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopupMenu.h"
@interface StoreInfo : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *fieldSelectTrainLine;
@property (strong,nonatomic) PopupMenu *menuSelectTrainLine;

@property (strong, nonatomic) IBOutlet UITextField *fieldNearest;
@property (strong, nonatomic) IBOutlet UITextField *fieldSelectArea;
@property (strong,nonatomic) PopupMenu *menuSelectArea;

@property (strong, nonatomic) IBOutlet UITextField *fieldPostalCode;
@property (strong, nonatomic) IBOutlet UITextField *fieldSelectDistrict;
@property (strong,nonatomic) PopupMenu *menuSelectDistrict;

@property (strong, nonatomic) IBOutlet UITextField *fieldSelectCity;
@property (strong,nonatomic) PopupMenu *menuSelectCity;

@property (strong, nonatomic) IBOutlet UITextField *fieldAdrs1;
@property (strong, nonatomic) IBOutlet UITextField *fieldAdrs2;
@property (strong, nonatomic) IBOutlet UITextField *fieldBuildingName;
@property (strong, nonatomic) IBOutlet UITextField *fieldRoomNo;
@property (strong, nonatomic) IBOutlet UITextField *fieldFloorNo;
@property (strong, nonatomic) IBOutlet UITextField *fieldStorePhone;
@property (strong, nonatomic) IBOutlet UITextField *fieldStoreFAX;
@property (strong, nonatomic) IBOutlet UITextField *fieldStoreMobile;

@end
