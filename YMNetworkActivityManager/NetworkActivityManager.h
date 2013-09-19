//
//  NetworkActivityManager.h
//  YMNetworkActivityManagerDemo
//
//  Created by Yusuke Miyazaki on 2013/03/15.
//  Copyright (c) 2013 Yusuke Miyazaki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkActivityManager : NSObject {
    int counter;
}

- (id)init;
+ (id)allocWithZone:(NSZone *)zone;
- (id)copyWithZone:(NSZone*)zone;

+ (NetworkActivityManager *)sharedManager;

- (void)increment;
- (void)decrement;

@end

