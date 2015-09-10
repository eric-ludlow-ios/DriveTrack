//
//  TripsHistoryTagsFilterListViewController.h
//  DriveTrack
//
//  Created by Rutan on 9/9/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol TripsFiltersListViewControllerDelegate;


@interface TripsFiltersListViewController : UIViewController

@property (weak, nonatomic) id<TripsFiltersListViewControllerDelegate> delegate;

@end


@protocol TripsFiltersListViewControllerDelegate <NSObject>

- (void)tripsFiltersViewControllerDidFinish:(TripsFiltersListViewController *)tripsFiltersViewController;

@end