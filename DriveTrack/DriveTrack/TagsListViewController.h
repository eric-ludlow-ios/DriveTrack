//
//  TagsListViewController.h
//  DriveTrack
//
//  Created by Rutan on 9/9/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol TagsListViewControllerDelegate;


@interface TagsListViewController : UIViewController

@property (weak, nonatomic) id<TagsListViewControllerDelegate> delegate;

@end


@protocol TagsListViewControllerDelegate <NSObject>

- (void)tagsViewControllerDidFinish:(TagsListViewController *)tagsViewController;

@end