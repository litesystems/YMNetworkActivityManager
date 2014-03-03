//
//  ViewController.m
//  YMNetworkActivityManagerDemo
//
//  Copyright (c) 2013-2014 Yusuke Miyazaki.
//

#import "ViewController.h"

#import "YMNetworkActivityManager.h"

@interface ViewController () {
    YMNetworkActivityManager *manager;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    manager = [YMNetworkActivityManager sharedManager];
}

- (IBAction)incrementButtonTouchUpInside:(id)sender {
    [manager increment];
    NSLog(@"NetworkActivityManager: Increment[%ld]", (long)manager.counter);
}

- (IBAction)decrementButtonTouchUpInside:(id)sender {
    [manager decrement];
    NSLog(@"NetworkActivityManager: Decrement[%ld]", (long)manager.counter);
}

- (IBAction)resetButtonTouchUpInside:(id)sender {
    [manager reset];
    NSLog(@"NetworkActivityManager: Reset[%ld]", (long)manager.counter);
}

@end