//
//  TripsHistoryViewTableViewDataSource.m
//  DriveTrack
//
//  Created by Rutan on 8/31/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TripsHistoryViewTableViewDataSource.h"
#import "TripsHistoryViewTableViewCell.h"

@implementation TripsHistoryViewTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TripsHistoryViewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tripsHistoryListCell"];
        
    return cell;
}

@end
