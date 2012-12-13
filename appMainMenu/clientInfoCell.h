//
//  clientInfoCell.h
//  splitViewControllerTest
//
//  Created by Rubel toufiq on 12/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface clientInfoCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *clientPhotoView;
@property (weak, nonatomic) IBOutlet UILabel *clientName;
@property (weak, nonatomic) IBOutlet UITextView *clientDetails;

@end
