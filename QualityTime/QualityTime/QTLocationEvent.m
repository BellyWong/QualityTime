//
//  QTLocationEvent.m
//  QualityTime
//
//  Created by Michael Critz on 5/4/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import "QTLocationEvent.h"

@interface QTLocationEvent()
@property (readwrite)EventType eventType;
@property (readwrite)NSDate *timeStamp;
@property (nonatomic)CLLocationManager *locationManager;
@end

@implementation QTLocationEvent

- (QTLocationEvent *)initWithEventType:(EventType)eventType
						   andLocation:(CLLocation *)eventLocation {
	self = [super init];
	self.eventType = eventType;
	if ([eventLocation isKindOfClass:[CLLocation class]]) {
		self.eventLocation = eventLocation;
	} else {
		return nil;
	}
	self.timeStamp = [NSDate date];
	return self;
}

@end
