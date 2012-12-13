//
//  datePickerPopover.h
//  popoverMenu
//
//  Created by Rubel toufiq on 12/11/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PopupMenu : NSObject <UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource,UITableViewDataSource,UITableViewDelegate>




@property (strong,nonatomic) UITextField *tf;
@property (strong, nonatomic) UIView* pView;
@property (strong,nonatomic)  UIDatePicker *dp;
@property (strong, nonatomic) UIPopoverController* popc;
@property (strong,nonatomic) UIViewController * popcontent;
@property (strong,nonatomic) NSMutableArray *dataSource;
@property (strong,nonatomic) UIPickerView *pickerView;
@property (strong, nonatomic) UITableView *tableView;

- (void)LabelChange:(id)sender;

-(void) makedatePickerMenuIn:(UITextField*) textField parentView: (UIView*) parentView;

-(void) makePickerMenuIn:(UITextField*) textField parentView: (UIView*) parentView withData:(NSArray*) dataArray;

-(void) makeTableMenuIn:(UITextField*) textField parentView: (UIView*) parentView withData:(NSArray*) dataArray;








@end
