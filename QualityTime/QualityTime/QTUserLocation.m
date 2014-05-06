//
//  QTUserLocation.m
//  QualityTime
//
//  Created by Michael Critz on 5/5/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import "QTUserLocation.h"

@interface QTUserLocation()

@property (readwrite)CLLocationCoordinate2D coordinate;

@end

@implementation QTUserLocation

@synthesize coordinate;

- (QTUserLocation *)initWithDescription:(NSString *)description
							 atLocation:(CLLocation *)location {
	self = [super init];
	if ([description isKindOfClass:[NSString class]]) {
		self.locationDescription = description;
	}
	if ([location isKindOfClass:[CLLocation class]]) {
		self.coordinate = location.coordinate;
	}
	return self;
}

- (NSString *)locationDescription {
	if (!_locationDescription) {
		_locationDescription = NSLocalizedString(@"Untitled", @"An unnamed location");
	}
	return _locationDescription;
}

@end
