//
//  Match.h
//  Oefening-UITableView-1
//
//  Created by Jonathan Provo on 19/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, MatchStatus) {
    MatchStatusNotPlayedYet = 0,
    MatchStatusOngoing = 1,
    MatchStatusPlayed = 2
};

@interface Match : NSObject

@property (strong, nonatomic) NSString * homeTeamName;
@property (assign, nonatomic) NSUInteger homeTeamScore;
@property (strong, nonatomic) NSString * homeTeamImageName;
@property (strong, nonatomic) NSString * visitingTeamName;
@property (assign, nonatomic) NSUInteger visitingTeamScore;
@property (strong, nonatomic) NSString * visitingTeamImageName;
@property (assign, nonatomic) MatchStatus status;

@end
