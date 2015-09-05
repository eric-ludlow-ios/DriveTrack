//
//  TripsHistoryViewController.m
//  DriveTrack
//
//  Created by Rutan on 8/31/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsHistoryViewController.h"
#import "TripsHistoryDetailViewController.h"

@interface TripsHistoryViewController ()

@end

@implementation TripsHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    TripsHistoryDetailViewController *tripsHistoryDetailVCon = [TripsHistoryDetailViewController new];
    tripsHistoryDetailVCon = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"segueAddNewPastTrip"]) {
        
        tripsHistoryDetailVCon.isNewTrip = YES;
    }
    
    if ([segue.identifier isEqualToString:@"segueViewTrip"]) {
        
        tripsHistoryDetailVCon.isNewTrip = NO;
    }
}

@end
