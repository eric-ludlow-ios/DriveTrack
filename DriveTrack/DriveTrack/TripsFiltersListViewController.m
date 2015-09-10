//
//  TripsHistoryTagsFilterListViewController.m
//  DriveTrack
//
//  Created by Rutan on 9/9/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsFiltersListViewController.h"

@interface TripsFiltersListViewController () <UITableViewDelegate>

@end

@implementation TripsFiltersListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (IBAction)doneButtonPressed:(id)sender {
    
    [self.delegate tripsFiltersViewControllerDidFinish:self];
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
