//
//  TripsHistoryTagsFilterListViewController.m
//  DriveTrack
//
//  Created by Rutan on 9/9/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsFiltersListViewController.h"

@interface TripsFiltersListViewController ()

@end

@implementation TripsFiltersListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
