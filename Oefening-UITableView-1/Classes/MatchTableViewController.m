//
//  MatchTableViewController.m
//  Oefening-UITableView-1
//
//  Created by Jonathan Provo on 20/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "MatchTableViewController.h"

#import "MatchViewController.h"
#import "MatchFactory.h"
#import "MatchSectionHeaderTableViewCell.h"
#import "MatchTableViewCell.h"

@interface MatchTableViewController ()

@property (strong, nonatomic) NSArray *matches;
@property (strong, nonatomic) NSMutableArray *matchesNotPlayed;
@property (strong, nonatomic) NSMutableArray *matchesOngoing;
@property (strong, nonatomic) NSMutableArray *matchesPlayed;
@property (strong, nonatomic) NSMutableArray *arraysWithMatches;

- (Match *)matchAtIndexPath:(NSIndexPath *)indexpath;
- (NSMutableArray *)matchesInSection:(NSInteger)section;
- (NSMutableArray *)matchesForStatus:(MatchStatus)status;

@end

@implementation MatchTableViewController

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.matches = [MatchFactory createMatches];
}

#pragma mark - UIViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];
    
    if ([segue.destinationViewController isKindOfClass:[MatchViewController class]] && [sender isKindOfClass:[UITableViewCell class]]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        Match *match = [self matchAtIndexPath:indexPath];
        
        MatchViewController *matchViewController = segue.destinationViewController;
        matchViewController.match = match;
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self matchesInSection:section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MatchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MatchTableViewCell class]) forIndexPath:indexPath];
    [cell configureForMatch:[self matchAtIndexPath:indexPath]];
    
    return cell;
}

#pragma mark - UITavleViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 66.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    MatchSectionHeaderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MatchSectionHeaderTableViewCell class])];
    Match* firstMatchInSection = [[self matchesInSection:section] firstObject];
    [cell configureForStatus:firstMatchInSection.status];
    
    return cell;
}

#pragma mark - Private

- (void)setMatches:(NSArray *)matches
{
    _matches = matches;
    
    self.matchesNotPlayed = [NSMutableArray array];
    self.matchesOngoing = [NSMutableArray array];
    self.matchesPlayed = [NSMutableArray array];
    self.arraysWithMatches = [NSMutableArray array];
    
    for (Match *match in _matches) {
        NSMutableArray *arrayForStatus = [self matchesForStatus:match.status];
        [arrayForStatus addObject:match];
    }
    
    if (self.matchesNotPlayed.count > 0) {
        [self.arraysWithMatches addObject:self.matchesNotPlayed];
    }
    if (self.matchesOngoing.count > 0) {
        [self.arraysWithMatches addObject:self.matchesOngoing];
    }
    if (self.matchesPlayed.count > 0) {
        [self.arraysWithMatches addObject:self.matchesPlayed];
    }
}

- (Match *)matchAtIndexPath:(NSIndexPath *)indexpath
{
    NSArray *matchesInSection = [self matchesInSection:indexpath.section];
    return matchesInSection[indexpath.row];
}

- (NSMutableArray *)matchesInSection:(NSInteger)section
{
    MatchStatus status = section;
    return [self matchesForStatus:status];
}

- (NSMutableArray *)matchesForStatus:(MatchStatus)status
{
    if (status == MatchStatusNotPlayedYet) {
        return self.matchesNotPlayed;
    
    } else if (status == MatchStatusOngoing) {
        return self.matchesOngoing;
    
    } else if (status == MatchStatusPlayed) {
        return self.matchesPlayed;
    
    } else {
        return nil;
    }
}

@end
