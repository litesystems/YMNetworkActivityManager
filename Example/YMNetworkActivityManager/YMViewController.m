//
//  YMViewController.m
//  YMNetworkActivityManager
//
//  Copyright (c) 2013-2014 Yusuke Miyazaki.
//

#import <YMNetworkActivityManager/YMNetworkActivityManager.h>

#import "YMViewController.h"

@interface YMViewController () {
    YMNetworkActivityManager *manager;
}

@end

@implementation YMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    manager = [YMNetworkActivityManager sharedManager];
}

- (IBAction)incrementButtonTouchUpInside:(id)sender {
    [manager increment];
    NSLog(@"YMNetworkActivityManager: Increment[%ld]", (long)manager.counter);
}

- (IBAction)decrementButtonTouchUpInside:(id)sender {
    [manager decrement];
    NSLog(@"YMNetworkActivityManager: Decrement[%ld]", (long)manager.counter);
}

- (IBAction)resetButtonTouchUpInside:(id)sender {
    [manager reset];
    NSLog(@"YMNetworkActivityManager: Reset[%ld]", (long)manager.counter);
}

@end