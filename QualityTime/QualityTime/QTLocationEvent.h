//
//  QTLocationEvent.h
//  QualityTime
//
//  Created by Michael Critz on 5/4/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface QTLocationEvent : NSObject

typedef NS_ENUM(NSUInteger, EventType) {
	kLocationUnknown = 0,
	kLocationEntered,
	kLocationExited
};
@property (readonly)EventType eventType;

@property (readonly)NSString *eventDescription;
@property (nonatomic)CLLocation *eventLocation;
@property (nonatomic)NSDate *timeStamp;
- (QTLocationEvent *)initWithEventType:(EventType)eventType
						   andLocation:(CLLocation *)eventLocation;

@end
