//
//  NetworkActivityManager.m
//  YMNetworkActivityManager
//
//  Created by Yusuke Miyazaki on 2013/03/15.
//  Copyright (c) 2013 Yusuke Miyazaki. All rights reserved.
//

#import "NetworkActivityManager.h"

@implementation NetworkActivityManager

static NetworkActivityManager *networkActivityManager = nil;

- (id)init {
    self = [super init];
    if (self) {
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

+ (NetworkActivityManager *)sharedManager {
	@synchronized(self) {
		if (networkActivityManager == nil) {
			networkActivityManager = [[self alloc] init];
		}
	}
	return networkActivityManager;
}

- (void)increment {
    if(counter == 0) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    }
    counter++;
    //NSLog(@"NetworkActivityManager: + %d", counter);
}

- (void)decrement {
    if (counter <= 0) {
        return;
    }
    counter--;
    if (counter == 0) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    }
    //NSLog(@"NetworkActivityManager: - %d", counter);
}

@end

