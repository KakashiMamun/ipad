//
//  datePickerPopover.m
//  popoverMenu
//
//  Created by Rubel toufiq on 12/11/10.
//  Copyright (c) 2010 __MyCompanyName__. All rights reserved.
//

#import "PopupMenu.h"

@implementation PopupMenu

@synthesize tf,popc,dp,pView,popcontent;

@synthesize pickerView,dataSource;

@synthesize tableView;

-(void) selfSetup:(UITextField*) textField parentView: (UIView*) parentView{
    
    self.tf = [[UITextField alloc] init];
    self.tf = textField;
 
    self.tf.delegate = self;
    self.tf.font = [UIFont fontWithName:@"Tahoma-Bold" size: 22.0];
    
    self.pView = [[UIView alloc] init];
    self.pView = parentView;

    popcontent = [[UIViewController alloc] init];
    
}



-(void) makedatePickerMenuIn:(UITextField*) textField parentView: (UIView*) parentView{
    
//    popcontent = [[UIViewController alloc] initWithNibName:@"datePickerMenu" bundle:nil];
//    
//    popc = [[UIPopoverController alloc] initWithContentViewController:popcontent];
//
//    
//    //[popc setContentViewController:PopContent animated:YES];\
    
        
    
    [self selfSetup:textField parentView:parentView];
    
    
    CGRect datePickerFrame = CGRectMake(0,0,325,200);
    
    dp = [[UIDatePicker alloc] initWithFrame:datePickerFrame];
    dp.datePickerMode = UIDatePickerModeDate;
	dp.hidden = NO;
	dp.date = [NSDate date];
    
    [popcontent.view addSubview:dp];
    
    popc = [[UIPopoverController alloc] initWithContentViewController:popcontent];

    popc.popoverContentSize = CGSizeMake(325, 200);
        
    [dp addTarget:self
	               action:@selector(LabelChange:)
	     forControlEvents:UIControlEventValueChanged];
}



-(void) makePickerMenuIn:(UITextField*) textField parentView: (UIView*) parentView withData:(NSArray*) dataArray{
    
    self.dataSource = [[NSMutableArray alloc] initWithArray:dataArray];
    
    [self selfSetup:textField parentView:parentView];
    
    CGRect pickerFrame = CGRectMake(0,0,325,200);
    
    self.pickerView = [[UIPickerView alloc] initWithFrame:pickerFrame];
    self.pickerView.delegate =self;
    self.pickerView.dataSource = self;
    
    [popcontent.view addSubview:pickerView];
    popc = [[UIPopoverController alloc] initWithContentViewController:popcontent];
    
    popc.popoverContentSize = CGSizeMake(325, 200);
}



-(void) makeTableMenuIn:(UITextField*) textField parentView: (UIView*) parentView withData:(NSArray*) dataArray{
    
    self.dataSource = [[NSMutableArray alloc] initWithArray:dataArray];
    
    [self selfSetup:textField parentView:parentView];
    
    CGRect tableFrame = CGRectMake(0,0,self.tf.frame.size.width,200);
    
    self.tableView = [[UITableView alloc] initWithFrame:tableFrame];
    self.tableView.delegate =self;
    self.tableView.dataSource = self;
    
    [popcontent.view addSubview:tableView];
    popc = [[UIPopoverController alloc] initWithContentViewController:popcontent];
    
    popc.popoverContentSize = CGSizeMake(self.tf.frame.size.width, 200);
}



- (void)LabelChange:(id)sender{
	NSDateFormatter *df = [[NSDateFormatter alloc] init];
   	df.dateStyle = NSDateFormatterShortStyle;
	tf.text = [NSString stringWithFormat:@"%@",
                      [df stringFromDate:dp.date]];
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    if([popc isPopoverVisible]){
        [popc dismissPopoverAnimated:YES];
    }
    else{
        [popc presentPopoverFromRect:self.tf.frame inView:self.pView permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    }
        return NO;
    }
-(void)textFieldDidBeginEditing:(UITextField *)textField
    {
        
    }
    



#pragma mark - pickerView

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [dataSource count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [dataSource objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    self.tf.text = [dataSource objectAtIndex:row];
}




#pragma mark - Table data source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 35;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [dataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];  
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Configure the cell..
    cell.textLabel.text = [dataSource objectAtIndex:row];
    cell.textLabel.textAlignment = UITextAlignmentCenter;
    cell.textLabel.font = [UIFont systemFontOfSize:17.0];
    cell.textLabel.textColor = [UIColor blackColor];
    cell.backgroundColor = [UIColor blueColor];
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    self.tf.text = [dataSource objectAtIndex:row];
    self.tableView.alpha = 1.0;
    
    [self.popc dismissPopoverAnimated:YES];
}


@end
