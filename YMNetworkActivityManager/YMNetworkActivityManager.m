//
//  YMNetworkActivityManager.m
//  YMNetworkActivityManager
//
//  Copyright (c) 2013-2014 Yusuke Miyazaki.
//

#import "YMNetworkActivityManager.h"

@implementation YMNetworkActivityManager

static YMNetworkActivityManager *networkActivityManager = nil;

- (id)init {
    self = [super init];
    if (self != nil) {
        _counter = 0;
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
    _counter++;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    NSLog(@"NetworkActivityManager: Increment[%d]", (int)_counter);
    return _counter;
}

- (NSUInteger)decrement {
    if (_counter <= 1) {
        _counter = 0;
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    } else {
        _counter--;
    }
    NSLog(@"NetworkActivityManager: Decrement[%d]", (int)_counter);
    return _counter;
}

- (NSUInteger)reset {
    _counter = 0;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    NSLog(@"NetworkActivityManager: Reset[0]");
    return 0;
}

@end