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

- (NSString *)eventDescription {
	NSString *prettyDescription;
	switch (_eventType) {
		case kLocationEntered:
			prettyDescription = NSLocalizedString(@"Arrived", @"Shown to user to denote the arrival at a location");
			break;
		case kLocationExited:
			prettyDescription = NSLocalizedString(@"Departed", @"Shown to user to denote the departure from a location");
		case kLocationUnknown:
			prettyDescription = NSLocalizedString(@"At", @"Shonw to user to denote an ambiguous location event. Ex: Landing at an airport, but not really staying for vacation.");
		default:
			break;
	}
	return prettyDescription;
}

@end
