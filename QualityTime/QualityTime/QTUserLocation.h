//
//  QTUserLocation.h
//  QualityTime
//
//  Created by Michael Critz on 5/5/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

@interface QTUserLocation : CLLocation

@property (nonatomic)NSString *locationDescription;
- (QTUserLocation *)initWithDescription:(NSString *)description
							 atLocation:(CLLocation *)location;

@end
