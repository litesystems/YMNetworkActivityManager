//
//  YMNetworkActivityManagerTests.m
//  YMNetworkActivityManagerTests
//
//  Copyright (c) 2014 Yusuke Miyazaki.
//

#import <SenTestingKit/SenTestingKit.h>

#import "YMNetworkActivityManager.h"

@interface YMNetworkActivityManagerTests : SenTestCase

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
    STAssertNotNil(manager, @"Manager is nil.");
    STAssertEqualObjects(manager, [YMNetworkActivityManager sharedManager], @"");
}

- (void)testCounter {
    YMNetworkActivityManager *manager = [YMNetworkActivityManager sharedManager];
    for (NSUInteger i = 0; i < 10; i++) {
        [manager increment];
    }
    for (NSUInteger i = 10; 0 < i; i--) {
        STAssertEquals(manager.counter, i, @"");
        [manager decrement];
    }
    for (NSInteger i = 0; i < 10; i++) {
        STAssertEquals(manager.counter, (NSUInteger)0, @"");
        [manager decrement];
    }
    for (NSUInteger i = 0; i < 10; i++) {
        STAssertEquals(manager.counter, i, @"");
        [manager increment];
    }
    [manager reset];
    STAssertEquals(manager.counter, (NSUInteger)0, @"");
}

@end