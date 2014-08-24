//
//  YMNetworkActivityManagerTests.m
//  YMNetworkActivityManagerTests
//
//  Copyright (c) 2014 Yusuke Miyazaki.
//

#import <XCTest/XCTest.h>

#import "YMNetworkActivityManager.h"

@interface YMNetworkActivityManagerTests : XCTestCase

@end

@implementation YMNetworkActivityManagerTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testSharedManager {
    YMNetworkActivityManager *manager;
    manager = [YMNetworkActivityManager sharedManager];
    XCTAssertNotNil(manager, @"Manager is nil.");
    XCTAssertEqualObjects(manager, [YMNetworkActivityManager sharedManager], @"");
}

- (void)testCounter {
    YMNetworkActivityManager *manager = [YMNetworkActivityManager sharedManager];
    for (NSUInteger i = 0; i < 10; i++) {
        [manager increment];
    }
    for (NSUInteger i = 10; 0 < i; i--) {
        XCTAssertEqual(manager.counter, i, @"");
        [manager decrement];
    }
    for (NSInteger i = 0; i < 10; i++) {
        XCTAssertEqual(manager.counter, (NSUInteger)0, @"");
        [manager decrement];
    }
    for (NSUInteger i = 0; i < 10; i++) {
        XCTAssertEqual(manager.counter, i, @"");
        [manager increment];
    }
    [manager reset];
    XCTAssertEqual(manager.counter, (NSUInteger)0, @"");
}

@end