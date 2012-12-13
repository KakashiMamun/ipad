//
//  PaymentInfo.h
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopupMenu.h"
@interface PaymentInfo : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *fieldSelectPaymentMethod;
@property (strong,nonatomic) PopupMenu *menuSelectPaymentMethod;

@property (strong, nonatomic) IBOutlet UITextField *fieldSelectPaymentStatus;
@property (strong,nonatomic) PopupMenu *menuSelectPaymentStatus;

@property (strong, nonatomic) IBOutlet UITextField *fieldSelectCardType;
@property (strong,nonatomic) PopupMenu *menuSelectCardType;

@property (strong, nonatomic) IBOutlet UITextField *fieldCardNo;

@property (strong, nonatomic) IBOutlet UITextField *fieldCardHolder;
@property (strong, nonatomic) IBOutlet UITextField *fieldDateCardExp;
@property (strong,nonatomic) PopupMenu *dateCardExp;

@property (strong, nonatomic) IBOutlet UITextField *fieldBankName;
@property (strong, nonatomic) IBOutlet UITextField *fieldBrachName;

@property (strong, nonatomic) IBOutlet UITextField *fieldSelectACType;
@property (strong,nonatomic) PopupMenu *menuSelectACType;


@property (strong, nonatomic) IBOutlet UITextField *fieldACNo;

@property (strong, nonatomic) IBOutlet UITextField *fieldACHolderName;

@property (strong, nonatomic) IBOutlet UITextField *fieldDateDOContract;
@property (strong,nonatomic) PopupMenu *dateDOContract;


@property (strong, nonatomic) IBOutlet UITextField *fieldSelectContractPersonal;
@property (strong,nonatomic) PopupMenu *menuSelectContractPersonal;

@end
