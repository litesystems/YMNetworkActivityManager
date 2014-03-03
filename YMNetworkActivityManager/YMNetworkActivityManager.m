//
//  YMNetworkActivityManager.m
//  YMNetworkActivityManager
//
//  Copyright (c) 2013-2014 Yusuke Miyazaki.
//

#import "YMNetworkActivityManager.h"

@interface YMNetworkActivityManager () {
    NSUInteger counter;
};

@end

@implementation YMNetworkActivityManager

static YMNetworkActivityManager *networkActivityManager = nil;

- (id)init {
    self = [super init];
    if (self != nil) {
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

- (id)copyWithZone:(NSZone *)zone {
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
    NSLog(@"NetworkActivityManager: Increment[%d]", (int)counter);
    return counter;
}

- (NSUInteger)decrement {
    if (counter <= 1) {
        counter = 0;
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    } else {
        counter--;
    }
    NSLog(@"NetworkActivityManager: Decrement[%d]", (int)counter);
    return counter;
}

- (NSUInteger)reset {
    counter = 0;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    NSLog(@"NetworkActivityManager: Reset[0]");
    return 0;
}

@end