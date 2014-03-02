//
//  YMNetworkActivityManagerTests.m
//  YMNetworkActivityManagerTests
//
//  Created by Yusuke Miyazaki on 2014/03/03.
//  Copyright (c) 2014 Yusuke Miyazaki. All rights reserved.
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