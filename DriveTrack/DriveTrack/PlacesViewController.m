//
//  PlacesViewController.m
//  DriveTrack
//
//  Created by Rutan on 8/26/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "PlacesViewController.h"
#import "PlacesDetailViewController.h"

@interface PlacesViewController ()

@end

@implementation PlacesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    PlacesDetailViewController *placesDetailVCon = [PlacesDetailViewController new];
    placesDetailVCon = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"segueAddNewPlace"]) {
        
        placesDetailVCon.isNewPlace = YES;
    }
    
    if ([segue.identifier isEqualToString:@"segueViewPlace"]) {
        
        placesDetailVCon.isNewPlace = NO;
    }
}

@end
