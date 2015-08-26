//
//  MatchTableViewCell.m
//  Oefening-UITableView-1
//
//  Created by Jonathan Provo on 20/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "MatchTableViewCell.h"

@interface MatchTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *homeTeamImageView;
@property (weak, nonatomic) IBOutlet UILabel *homeTeamNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UIImageView *visitingTeamImageView;
@property (weak, nonatomic) IBOutlet UILabel *visitingTeamNameLabel;

@end

@implementation MatchTableViewCell

#pragma mark - Public

- (void)configureForMatch:(Match *)match
{
    self.homeTeamImageView.image = [UIImage imageNamed:match.homeTeamImageName];
    self.homeTeamNameLabel.text = match.homeTeamName;
    self.score.hidden = (match.status == MatchStatusNotPlayedYet || match.status == MatchStatusOngoing);
    self.score.text = [NSString stringWithFormat:@"%@ - %@", @(match.homeTeamScore), @(match.visitingTeamScore)];
    self.visitingTeamImageView.image = [UIImage imageNamed:match.visitingTeamImageName];
    self.visitingTeamNameLabel.text = match.visitingTeamName;
}

@end
