//
//  QTCoreLocationController.m
//  QualityTime
//
//  Created by Michael Critz on 5/5/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import "QTCoreLocationController.h"

@interface QTCoreLocationController()

@property (nonatomic)CLLocationManager *locationManager;

@end

@implementation QTCoreLocationController

- (QTCoreLocationController *)init {
	self = [super init];
	[self checkCLAuthorization];
	[self initLocationManager];
	return self;
}

- (void)checkCLAuthorization {
	if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusAuthorized) {
		NSLog(@"Hola! CL is authorized");
		[self.locationManager setDelegate:self];
		[self initLocationManager];
	} else {
		// TODO: Better UX
		NSLog(@"CL is not authorized");
		return;
	}
}


- (void)initLocationManager {
	[self.locationManager startUpdatingLocation];
}

- (CLLocationManager *)locationManager {
	if (!_locationManager) {
		_locationManager = [[CLLocationManager alloc] init];
	}
	return _locationManager;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
	// !!! Doing this *maybe* helps with background updating.
	[self setDeviceLocation:locations.lastObject];
}

- (CLLocation *)deviceLocation {
	return self.locationManager.location;
}

@end
