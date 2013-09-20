//
//  YMNetworkActivityManager.m
//  YMNetworkActivityManager
//
//  Created by Yusuke Miyazaki on 2013/03/15.
//  Copyright (c) 2013 Yusuke Miyazaki. All rights reserved.
//

#import "YMNetworkActivityManager.h"

@implementation YMNetworkActivityManager

static YMNetworkActivityManager *networkActivityManager = nil;

- (id)init {
    if (self = [super init]) {
        counter = 0;
    }
    return self;
}

+ (id)allocWithZone:(NSZone *)zone {
    @synchronized(self) {
        if (networkActivityManager == nil) {
            networkActivityManager = [super allocWithZone:zone];
            return networkActivityManager;
        }
    }
    return nil;
}

- (id)copyWithZone:(NSZone*)zone {
    return self;
}

+ (YMNetworkActivityManager *)sharedManager {
    @synchronized(self) {
        if (networkActivityManager == nil) {
            networkActivityManager = [[self alloc] init];
        }
    }
    return networkActivityManager;
}

- (NSUInteger)increment {
    counter++;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    NSLog(@"NetworkActivityManager: Increment[%d]", counter);
    return counter;
}

- (NSUInteger)decrement {
    if (counter <= 1) {
        counter = 0;
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    } else {
        counter--;
    }
    NSLog(@"NetworkActivityManager: Decrement[%d]", counter);
    return counter;
}

- (NSUInteger)reset {
    counter = 0;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    NSLog(@"NetworkActivityManager: Reset[0]");
    return 0;
}

@end
