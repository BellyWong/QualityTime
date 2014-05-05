//
//  QualityTimeTests.m
//  QualityTimeTests
//
//  Created by Michael Critz on 5/4/14.
//  Copyright (c) 2014 Map of the Unexplored. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "QTLocationEvent.h"

@interface QualityTimeTests : XCTestCase

@end

@implementation QualityTimeTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testQtLocationEvent
{
	NSDate *dateToTest = [NSDate date];
	QTLocationEvent *failLocationEvent = [[QTLocationEvent alloc] initWithEventType:kLocationEntered atDate:dateToTest forLocation:nil];
	XCTAssertFalse(failLocationEvent, @"shouldn't return anything if no location");
	
	CLLocation *locationToTest = [[CLLocation alloc] init];
	QTLocationEvent *eventToTest = [[QTLocationEvent alloc] initWithEventType:kLocationEntered atDate:dateToTest forLocation:locationToTest];
	XCTAssertTrue([eventToTest isKindOfClass:[QTLocationEvent class]], @"returns an object");
	XCTAssertTrue([eventToTest.timeStamp isKindOfClass:[NSDate class]], @"has a valid timestamp");
	XCTAssertTrue([eventToTest.eventLocation isEqual:locationToTest], @"returns a valid location");
}

@end
