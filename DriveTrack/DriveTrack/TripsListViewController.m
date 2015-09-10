//
//  TripsHistoryViewController.m
//  DriveTrack
//
//  Created by Rutan on 8/31/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsListViewController.h"
#import "TripDetailViewController.h"
#import "TagsListViewController.h"

@interface TripsListViewController () <TagsListViewControllerDelegate>

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
    
    if ([segue.identifier isEqualToString:@"segueTripsToTagsList"]) {
        
        UINavigationController *navCon = segue.destinationViewController;
        
        TagsListViewController *destinationTagsViewCon = (TagsListViewController *)navCon.topViewController;
        
        destinationTagsViewCon.delegate = self;
        
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

#pragma mark - Tags List ViewController Delegate method

- (void)tagsViewControllerDidFinish:(TagsListViewController *)tagsViewController {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
