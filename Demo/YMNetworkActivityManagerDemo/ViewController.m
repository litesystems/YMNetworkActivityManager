//
//  ViewController.m
//  YMNetworkActivityManagerDemo
//
//  Copyright (c) 2013-2014 Yusuke Miyazaki.
//

#import "ViewController.h"

#import "YMNetworkActivityManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)incrementButtonTouchUpInside:(id)sender {
    [[YMNetworkActivityManager sharedManager] increment];
}

- (IBAction)decrementButtonTouchUpInside:(id)sender {
    [[YMNetworkActivityManager sharedManager] decrement];
}

- (IBAction)resetButtonTouchUpInside:(id)sender {
    [[YMNetworkActivityManager sharedManager] reset];
}

@end