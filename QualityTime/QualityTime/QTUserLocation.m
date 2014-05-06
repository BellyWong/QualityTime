//
//  QTUserLocation.m
//  QualityTime
//
//  Created by Michael Critz on 5/5/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import "QTUserLocation.h"

@implementation QTUserLocation

- (QTUserLocation *)initWithDescription:(NSString *)description {
	self = [super init];
	if ([description isKindOfClass:[NSString class]]) {
		self.description = description;
	}
	return self;
}

- (NSString *)description {
	if (!_description) {
		_description = NSLocalizedString(@"Untitled", @"An unnamed location");
	}
	return _description;
}

@end
