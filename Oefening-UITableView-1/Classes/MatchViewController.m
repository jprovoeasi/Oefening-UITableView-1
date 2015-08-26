//
//  MatchViewController.m
//  Oefening-UITableView-1
//
//  Created by Jonathan Provo on 20/08/15.
//  Copyright (c) 2015. All rights reserved.
//

#import "MatchViewController.h"

@interface MatchViewController ()

@property (weak, nonatomic) IBOutlet UILabel *homeTeamNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *visitingTeamNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIImageView *homeTeamImageView;
@property (weak, nonatomic) IBOutlet UIImageView *visitingTeamImageView;

@end

@implementation MatchViewController

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.homeTeamNameLabel.text = self.match.homeTeamName;
    self.visitingTeamNameLabel.text = self.match.visitingTeamName;
    self.scoreLabel.hidden = (self.match.status == MatchStatusNotPlayedYet || self.match.status == MatchStatusOngoing);
    self.scoreLabel.text = [NSString stringWithFormat:@"%@ - %@", @(self.match.homeTeamScore), @(self.match.visitingTeamScore)];
    self.homeTeamImageView.image = [UIImage imageNamed:self.match.homeTeamImageName];
    self.visitingTeamImageView.image = [UIImage imageNamed:self.match.visitingTeamImageName];
}



@end
