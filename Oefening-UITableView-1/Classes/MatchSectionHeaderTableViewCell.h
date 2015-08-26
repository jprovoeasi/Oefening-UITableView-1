//
//  MatchSectionHeaderTableViewCell.h
//  Oefening-UITableView-1
//
//  Created by Jonathan Provo on 20/08/15.
//  Copyright (c) 2015 EASI. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Match.h"

@interface MatchSectionHeaderTableViewCell : UITableViewCell

- (void)configureForStatus:(MatchStatus)status;

@end
