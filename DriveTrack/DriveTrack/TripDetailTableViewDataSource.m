//
//  TripsHistoryDetailViewTableViewDataSource.m
//  DriveTrack
//
//  Created by Rutan on 9/4/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripDetailTableViewDataSource.h"

@implementation TripDetailTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tripDetailTagCell"];
    
    if (self.isNewTrip) {
        cell.textLabel.text = @"";
    } else {
        cell.textLabel.text = @"sales trip";
    }
    
    return cell;
}

@end
