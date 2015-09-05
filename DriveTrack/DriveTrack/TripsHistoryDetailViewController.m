//
//  TripsHistoryDetailViewController.m
//  DriveTrack
//
//  Created by Rutan on 8/31/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsHistoryDetailViewController.h"
#import "TripsHistoryDetailViewTableViewDataSource.h"
//@import MapKit;

@interface TripsHistoryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *tripDetailDateTextField;
@property (weak, nonatomic) IBOutlet UILabel *tripDetailMilesLabel;
@property (weak, nonatomic) IBOutlet UILabel *tripDetailTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *tripDetailStartPlaceFavoriteStarImageView;
@property (weak, nonatomic) IBOutlet UILabel *tripDetailStartPlaceNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *tripDetailStartPlaceAddressTextField;
@property (weak, nonatomic) IBOutlet UIImageView *tripDetailEndPlaceFavoriteStarImageView;
@property (weak, nonatomic) IBOutlet UILabel *tripDetailEndPlaceNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *tripDetailEndPlaceAddressTextField;

@property (weak, nonatomic) IBOutlet UITableView *tripDetailTagsTableView;

@end

@implementation TripsHistoryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    TripsHistoryDetailViewTableViewDataSource *dataSource = self.tripDetailTagsTableView.dataSource;
    
    if (self.isNewTrip) {
        
        self.title = @"New Trip";
        dataSource.isNewTrip = YES;
        
    } else {
        
        self.title = @"A Past Trip";
        
        dataSource.isNewTrip = NO;
        
        self.tripDetailDateTextField.text = @"September 2, 2015, 12:36 PM";
        self.tripDetailMilesLabel.text = @"Mi: 2,888";
        self.tripDetailTimeLabel.text = @"44 h. 36 m.";
        self.tripDetailStartPlaceFavoriteStarImageView.image = [UIImage imageNamed:@"starFilled30"];
        self.tripDetailStartPlaceNameLabel.text = @"Corp HQ";
        self.tripDetailStartPlaceAddressTextField.text = @"23489 N. Broadway, New York City, NY";
        self.tripDetailEndPlaceFavoriteStarImageView.image = [UIImage imageNamed:@"starOutline30"];
        self.tripDetailEndPlaceNameLabel.text = @"";
        self.tripDetailEndPlaceAddressTextField.text = @"4321 S. Roosevelt Blvd., Salt Lake City, UT";
    }
    
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
