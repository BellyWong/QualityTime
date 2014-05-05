//
//  QTLocationLogCell.m
//  QualityTime
//
//  Created by Michael Critz on 5/4/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import "QTLocationLogCell.h"

@implementation QTLocationLogCell

- (QTLocationLogCell *)init {
	self = [super init];
	[self.titleLabel setText:@"OMG LOOK"];
	[self.subtitleLabel setText:@"O.o"];
	return self;
}

- (void)setLocationEvent:(QTLocationEvent *)locationEvent {
	_locationEvent = locationEvent;
	[self.titleLabel setText:@"zOMGz!"];
	[self.subtitleLabel setText:@"its a subtitle!"];
}

@end
