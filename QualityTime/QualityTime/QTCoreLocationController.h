//
//  QTCoreLocationController.h
//  QualityTime
//
//  Created by Michael Critz on 5/5/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface QTCoreLocationController : NSObject <CLLocationManagerDelegate>

@property (nonatomic)CLLocation *deviceLocation;
- (void)initLocationManager;

@end
