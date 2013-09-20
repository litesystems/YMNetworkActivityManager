//
//  YMNetworkActivityManager.h
//  YMNetworkActivityManager
//
//  Created by Yusuke Miyazaki on 2013/03/15.
//  Copyright (c) 2013 Yusuke Miyazaki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YMNetworkActivityManager : NSObject {
    NSUInteger counter;
}

- (id)init;
+ (id)allocWithZone:(NSZone *)zone;
- (id)copyWithZone:(NSZone *)zone;

+ (YMNetworkActivityManager *)sharedManager;

- (NSUInteger)increment;
- (NSUInteger)decrement;
- (NSUInteger)reset;

@end

