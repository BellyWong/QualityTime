//
//  QTLocationLogCell.h
//  QualityTime
//
//  Created by Michael Critz on 5/4/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QTLocationEvent.h"

@interface QTLocationLogCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (weak, nonatomic) QTLocationEvent *locationEvent;

@end
