YMNetworkActivityManager
========================

[![Build Status](https://travis-ci.org/litesystems/YMNetworkActivityManager.png?branch=develop)](https://travis-ci.org/litesystems/YMNetworkActivityManager)

**YMNetworkActivityManager** is a manager class of the network activity indicator in the status bar.

Requirements
============
iOS 5+ with ARC (Automatic Reference Counting).

Installation
============
Add `YMNetworkActivityManager.h` and `YMNetworkActivityManager.m` to your project.

Usage
=====
```objective-c```
// Increment
[[YMNetworkActivityManager sharedManager] increment];
// Decrement
[[YMNetworkActivityManager sharedManager] decrement];
```
