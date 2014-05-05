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
	[self.titleLabel setText:locationEvent.eventDescription];
	[self.subtitleLabel setText:[self beautifyDate:locationEvent.timeStamp]];
}

- (NSString *)beautifyDate:(NSDate *)date {
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateStyle:NSDateFormatterMediumStyle];
	[dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
	NSString *prettyDate = [dateFormatter stringFromDate:date];
	return prettyDate;
}

@end
