//
//  TripsHistoryViewController.m
//  DriveTrack
//
//  Created by Rutan on 8/31/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsListViewController.h"
#import "TripDetailViewController.h"
#import "TripsFiltersListViewController.h"

@interface TripsListViewController () <TripsFiltersListViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TripsListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"segueToFilterList"]) {
        
        UINavigationController *navCon = segue.destinationViewController;
        
        TripsFiltersListViewController *destinationTripsFiltersViewCon = (TripsFiltersListViewController *)navCon.topViewController;
        
        destinationTripsFiltersViewCon.delegate = self;
        
    } else {
        
        TripDetailViewController *tripsHistoryDetailVCon = [TripDetailViewController new];
        tripsHistoryDetailVCon = segue.destinationViewController;
        
        if ([segue.identifier isEqualToString:@"segueAddNewPastTrip"]) {
            
            tripsHistoryDetailVCon.isNewTrip = YES;
        }
        
        if ([segue.identifier isEqualToString:@"segueViewTrip"]) {
            
            tripsHistoryDetailVCon.isNewTrip = NO;
        }
    }
}

#pragma mark - Trips Filters List ViewController Delegate method

- (void)tripsFiltersViewControllerDidFinish:(TripsFiltersListViewController *)tripsFiltersViewController {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
