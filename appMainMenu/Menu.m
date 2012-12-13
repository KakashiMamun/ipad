//
//  MasterViewController.m
//  iPadHelloWorld
//
//  Created by Brandon Trebitowski on 2/1/10.
//  Copyright RightSprite 2010. All rights reserved.
//

#import "Menu.h"
#import "menuCell.h"
@implementation Menu

@synthesize listOfMenuItems;
@synthesize caller;
#pragma mark -
#pragma mark Rotation support

// Ensure that the view controller supports rotation and that the split view can therefore show in both portrait and landscape.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return YES;
}


#pragma mark -
#pragma mark Size for popover
// The size the view should be when presented in a popover.
- (CGSize)contentSizeForViewInPopoverView {
    return CGSizeMake(320.0, 600.0);
}


#pragma mark -
#pragma mark View lifecycle


 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
	self.listOfMenuItems = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"menuList" ofType:@"plist"]];
    self.tableView.rowHeight = 150;
    self.tableView.bounces = NO;
     
}
/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/
/*
- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}
 */

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)aTableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)aTableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [listOfMenuItems count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
	static NSString *CellIdentifier = @"menuCellIdentifier";
	
	// Dequeue or create a cell of the appropriate type.
	menuCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        NSArray *objs = [[NSBundle mainBundle] loadNibNamed:@"menuCell" owner:self options:nil];
        
        for(id curObj in objs){
            cell = (menuCell*) curObj;
            break;
        }
    }
    
    NSString* s = [NSString stringWithFormat:@"%@.png", [self.listOfMenuItems objectAtIndex:indexPath.row]];
   // NSLog(@"%@\n",s);
    UIImage *image = [UIImage imageNamed:s];
    cell.imageViewofMenuItems.image = image;
    cell.labelText.text = [self.listOfMenuItems objectAtIndex:indexPath.row];
    
   
    return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    [self.caller  changeBoardTitle:[self.listOfMenuItems objectAtIndex:indexPath.row]];
    
    if(indexPath.row == 4)
        [self.caller setClientInfoTable];
    else
        [self.caller freeAllViewControllers];
    /*
     When a row is selected, set the detail view controller's detail item to the item associated with the selected row.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
    
    }

@end
