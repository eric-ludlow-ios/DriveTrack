//
//  TripsHistoryViewTableViewDataSource.m
//  DriveTrack
//
//  Created by Rutan on 8/31/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsListTableViewDataSource.h"
#import "TripsListTableViewCell.h"

@implementation TripsListTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TripsListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tripsHistoryListCell"];
        
    return cell;
}

@end
