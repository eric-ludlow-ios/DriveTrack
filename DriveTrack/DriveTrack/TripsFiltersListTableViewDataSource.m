//
//  TripsFiltersListTableViewDataSource.m
//  DriveTrack
//
//  Created by Rutan on 9/10/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsFiltersListTableViewDataSource.h"

@implementation TripsFiltersListTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self fakeDataFiltersArray].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"filterListCell"];
    
    cell.textLabel.text = [self fakeDataFiltersArray][indexPath.row];
    
    return cell;
}

- (NSArray *)fakeDataFiltersArray {
    
    return @[@"work", @"vacation", @"errands"];
}

@end
