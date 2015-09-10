//
//  TagsListViewController.m
//  DriveTrack
//
//  Created by Rutan on 9/9/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TagsListViewController.h"

@interface TagsListViewController () <UITableViewDelegate>

@end

@implementation TagsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)addNewTagPressed:(id)sender {
    
    UIAlertController *addNewTagAlert = [UIAlertController alertControllerWithTitle:@"New Tag"
                                                                                 message:@"Type the name of a new tag:"
                                                                          preferredStyle:UIAlertControllerStyleAlert];
    
    [addNewTagAlert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        
        textField.placeholder = @"'sales trip' or 'errand'";
    }];
    
    [addNewTagAlert addAction:[UIAlertAction actionWithTitle:@"Add"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction *action) {
                                                              
                                                              //***insert this code, and check it, after implementing CoreData***
                                                              
//                                                              UITextField *textField = addNewTagAlert.textFields[0];
//                                                              
//                                                              Tag *tag = [[TagController sharedInstance] createTag];
//                                                              tag.nameOfTag = textField.text;
//                                                              [[ListAndItemController sharedInstance] save];
//                                                              
//                                                              dispatch_async(dispatch_get_main_queue(), ^{
//                                                                  
//                                                                  [self.tagsTableView reloadData];
//                                                              });
                                                          }]];
    
    [addNewTagAlert addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                                            style:UIAlertActionStyleDestructive
                                                          handler:nil]];
    
    [self.navigationController presentViewController:addNewTagAlert
                                            animated:YES
                                          completion:nil];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //different inital state and property setting for filter selection vs. trip detail tag selection
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if ([tableView cellForRowAtIndexPath:indexPath].accessoryType) {
        [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
        //set the property for actual filtering
        
    } else {
        [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
        //set the property for actual filtering
        
    }
}

- (IBAction)doneButtonPressed:(id)sender {
    
    [self.delegate tagsViewControllerDidFinish:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
