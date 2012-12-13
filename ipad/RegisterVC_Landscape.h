//
//  RegisterVC_Landscape.h
//  ipad
//
//  Created by Rubel toufiq on 12/12/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopupMenu.h"
@interface RegisterVC_Landscape : UIViewController


@property (weak, nonatomic) IBOutlet UIView *ContainerView;

- (IBAction)returnToLoginVC:(id)sender;

//
//@property (strong, nonatomic) IBOutlet UITextField *businessTypeSelect;
//@property (strong, nonatomic) PopupMenu *businessTypeSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *introducersNameField;
//
//@property (strong, nonatomic) IBOutlet UITextField *ownerNameField;
//
//@property (strong, nonatomic) IBOutlet UITextField *regMailField;
//
//@property (strong, nonatomic) IBOutlet UITextField *trainLineSelect;
//@property (strong, nonatomic) PopupMenu *trainLineSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *NearestField;
//
//@property (strong, nonatomic) IBOutlet UITextField *areaSelect;
//@property (strong, nonatomic) PopupMenu *areaSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *postalCode;
//
//@property (strong, nonatomic) IBOutlet UITextField *districtSelect;
//@property (strong, nonatomic) PopupMenu *districtSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *citySelect;
//@property (strong, nonatomic) PopupMenu *citySelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *Address1Field;
//
//@property (strong, nonatomic) IBOutlet UITextField *Address2Field;
//
//@property (strong, nonatomic) IBOutlet UITextField *buildingNameField;
//
//@property (strong, nonatomic) IBOutlet UITextField *roomNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *floorNoField;
//
//
//@property (strong, nonatomic) IBOutlet UITextField *operationStatusSelect;
//@property (strong, nonatomic) PopupMenu *operationStatusSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *storePhoneNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *storeFAXNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *shopMobileNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owPostalCodeField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owStateField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owAddress1Field;
//
//@property (strong, nonatomic) IBOutlet UITextField *owAddress2Field;
//
//@property (strong, nonatomic) IBOutlet UITextField *owBuildingNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owCityField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owEmailField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owPhoneNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owFAXNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owFloorNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owRoomNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *owMobileNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *paymentTypeSelect;
//@property (strong, nonatomic) PopupMenu *paymentTypeSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *paymentStatusSelect;
//@property (strong, nonatomic) PopupMenu *paymentStatusSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *cardTypeSelect;
//@property (strong, nonatomic) PopupMenu *cardTypeSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *cardNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *cardHolderField;
//
//@property (strong, nonatomic) IBOutlet UITextField *cardExpDate;
//@property (strong, nonatomic) PopupMenu *cardExpDateMenu;
//
//
//@property (strong, nonatomic) IBOutlet UITextField *bankNameField;
//
//@property (strong, nonatomic) IBOutlet UITextField *branchNameField;
//
//@property (strong, nonatomic) IBOutlet UITextField *acTypeSelect;
//@property (strong, nonatomic) PopupMenu *acTypeSelectMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *acNoField;
//
//@property (strong, nonatomic) IBOutlet UITextField *acHolderField;
//
//@property (strong, nonatomic) IBOutlet UITextField *dateofContractDate;
//@property (strong, nonatomic) PopupMenu *dateofContractDateMenu;
//
//@property (strong, nonatomic) IBOutlet UITextField *contractPersonalSelect;
//@property (strong, nonatomic) PopupMenu *contractPersonalSelectMenu;
//
//
//
//@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *allFields;
//
//- (IBAction)returnToLoginView:(id)sender;
//
//
//@property (strong,nonatomic) UIColor* defaultBlue;
//
//
//
- (IBAction)changeView:(id)sender;

- (IBAction)turnOnBasicInfoView:(id)sender;
- (IBAction)turnOnStoreInfoView:(id)sender;

- (IBAction)turnOnOwnersInfoView:(id)sender;

- (IBAction)turnOnPaymentInfoView:(id)sender;

@end
