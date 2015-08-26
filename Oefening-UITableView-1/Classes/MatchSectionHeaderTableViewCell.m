//
//  MatchSectionHeaderTableViewCell.m
//  Oefening-UITableView-1
//
//  Created by Jonathan Provo on 20/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "MatchSectionHeaderTableViewCell.h"

@interface MatchSectionHeaderTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation MatchSectionHeaderTableViewCell

#pragma mark - Public

- (void)configureForStatus:(MatchStatus)status
{
    if (status == MatchStatusNotPlayedYet) {
        self.statusLabel.text = @"Not played yet";
        
    } else if (status == MatchStatusOngoing) {
        self.statusLabel.text = @"Live";
        
    } else if (status == MatchStatusPlayed) {
        self.statusLabel.text = @"Finished";
    }
}

@end
