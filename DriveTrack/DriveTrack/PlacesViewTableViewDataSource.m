//
//  PlacesViewTableViewDataSource.m
//  DriveTrack
//
//  Created by Rutan on 8/27/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "PlacesViewTableViewDataSource.h"

@implementation PlacesViewTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"placeListCell"];
    
    //get the data model to use to set up the cell
    
    cell.textLabel.text = @"Name of a place";
    cell.detailTextLabel.text = @"1001 N. Street St., Somewhere, UT";
    
    return cell;
}

@end
