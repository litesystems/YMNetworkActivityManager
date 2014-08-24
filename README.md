YMNetworkActivityManager
========================

[![Build Status](https://travis-ci.org/litesystems/YMNetworkActivityManager.png?branch=develop)](https://travis-ci.org/litesystems/YMNetworkActivityManager)

**YMNetworkActivityManager** is a manager class of the network activity indicator in the status bar.

Requirements
============
iOS 6.1+ with ARC (Automatic Reference Counting).  
[For iOS 5.0-6.0.2 older version is available.](https://github.com/litesystems/YMNetworkActivityManager/tree/1a8a2cefc580b5e29a8d1857ff07b2834a867591)

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

License
=======
The MIT License

See [LICENSE](LICENSE).
