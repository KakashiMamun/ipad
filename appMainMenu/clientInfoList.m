//
//  clientInfoList.m
//  splitViewControllerTest
//
//  Created by Rubel toufiq on 12/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "clientInfoList.h"
#import "clientInfoCell.h"
#import "clientInfoDetailsView.h"

@implementation clientInfoList
@synthesize detailView;
@synthesize listOfClient;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.listOfClient = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"clientList" ofType:@"plist"]];
    self.tableView.rowHeight = 200;
    self.tableView.bounces = NO;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [listOfClient count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
	static NSString *CellIdentifier = @"clientInfoCellIdentifier";
	
	// Dequeue or create a cell of the appropriate type.
	clientInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        NSArray *objs = [[NSBundle mainBundle] loadNibNamed:@"clientInfoCell" owner:self options:nil];
        
        for(id curObj in objs){
            cell = (clientInfoCell*) curObj;
            break;
        }
    }
    
    NSString* s = [NSString stringWithFormat:@"%@.jpg", [self.listOfClient objectAtIndex:indexPath.row]];
    //NSLog(@"%@\n",s);
    UIImage *image = [UIImage imageNamed:s];
    cell.clientPhotoView.image = image;
    cell.clientName.text = [self.listOfClient objectAtIndex:indexPath.row];
    // Configure the cell...
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
      detailView = [[clientInfoDetailsView alloc] initWithNibName:@"clientInfoDetailsView" bundle:nil];
    
    NSString* s = [NSString stringWithFormat:@"%@.jpg", [self.listOfClient objectAtIndex:indexPath.row]];
    NSLog(@"%@\n",s);
    UIImage *image = [UIImage imageNamed:s];
    
    detailView.view.frame = self.navigationController.view.bounds;
    detailView.imageRect.image = image;
    detailView.name.text = [self.listOfClient objectAtIndex:indexPath.row];
  
    
    [self.navigationController pushViewController:detailView animated:YES];
}

@end
