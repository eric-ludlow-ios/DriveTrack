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
