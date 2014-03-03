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

@end