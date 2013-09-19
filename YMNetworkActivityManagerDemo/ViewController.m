//
//  ViewController.m
//  YMNetworkActivityManagerDemo
//
//  Created by Yusuke Miyazaki on 2013/09/20.
//  Copyright (c) 2013 Yusuke Miyazaki. All rights reserved.
//

#import "ViewController.h"

#import "YMNetworkActivityManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)incrementButtonTouchUpInside:(id)sender {
    [[YMNetworkActivityManager sharedManager] increment];
}

- (IBAction)decrementButtonTouchUpInside:(id)sender {
    [[YMNetworkActivityManager sharedManager] decrement];
}

@end
