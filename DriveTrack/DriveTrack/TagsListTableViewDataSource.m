//
//  TagsListTableViewDataSource.m
//  DriveTrack
//
//  Created by Rutan on 9/10/15.
//  Copyright (c) 2015 EricLudlowRadicalApplications. All rights reserved.
//

#import "TagsListTableViewDataSource.h"

@implementation TagsListTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return (1 + [self fakeDataTagsArray].count);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tagListCell"];
    
    if (indexPath.row == 0) {
        
        cell.textLabel.text = @"ALL";
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        
    } else {
        
        cell.textLabel.text = [self fakeDataTagsArray][indexPath.row - 1];
    }
    
    return cell;
}

- (NSArray *)fakeDataTagsArray {
    
    return @[@"errands", @"sales trip", @"vacation", @"work"];
}

@end
