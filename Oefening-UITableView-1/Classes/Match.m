//
//  Match.m
//  Oefening-UITableView-1
//
//  Created by Jonathan Provo on 19/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import "Match.h"

@interface Match ()

- (NSString *)imageNameForTeamName:(NSString *)teamName;

@end

@implementation Match

#pragma mark - Public methods

- (NSString *)homeTeamImageName
{
    return [self imageNameForTeamName:self.homeTeamName];
}

- (NSString *)visitingTeamImageName
{
    return [self imageNameForTeamName:self.visitingTeamName];
}

#pragma mark - Private methods

- (NSString *)imageNameForTeamName:(NSString *)teamName
{
    NSArray *imageNames = @[
                            @"stvv",
                            @"genk",
                            @"zulte",
                            @"brugge",
                            @"waasland",
                            @"moeskroen",
                            @"mechelen",
                            @"leuven",
                            @"charleroi",
                            @"westerlo",
                            @"anderlecht",
                            @"lokeren",
                            @"standard",
                            @"oostende",
                            @"kortrijk",
                            @"gent"
                            ];
    
    __block NSString *name = nil;
    [imageNames enumerateObjectsUsingBlock:^(NSString *imageName, NSUInteger idx, BOOL *stop) {
        if ([teamName.lowercaseString containsString:imageName]) {
            name = imageName;
            *stop = YES;
        }
    }];
    
    return name;
}

@end
