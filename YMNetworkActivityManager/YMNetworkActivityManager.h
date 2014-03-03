//
//  YMNetworkActivityManager.h
//  YMNetworkActivityManager
//
//  Copyright (c) 2013-2014 Yusuke Miyazaki.
//

#import <Foundation/Foundation.h>

@interface YMNetworkActivityManager : NSObject

@property (nonatomic, readonly) NSUInteger counter;

- (id)init;
+ (id)allocWithZone:(NSZone *)zone;
- (id)copyWithZone:(NSZone *)zone;

+ (YMNetworkActivityManager *)sharedManager;

- (NSUInteger)increment;
- (NSUInteger)decrement;
- (NSUInteger)reset;

@end