//
//  clientInfoDetailsView.h
//  splitViewControllerTest
//
//  Created by Rubel toufiq on 12/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface clientInfoDetailsView : UIViewController
{
   UILabel *name;
   UIImageView *imageRect;

}

@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UIImageView *imageRect;

- (IBAction)dismissClientDetail:(id)sender;

@end
