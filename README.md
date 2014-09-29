ios8-resolutions
================

A simple, yet effective fancy class to detect which device it's running the application

Usage
=====

Import the class to your existing project 

This class features two methods:

[UIDevice deviceName] will return the device name in a verbose mode just in case you need that

    NSLog(@"%@", [UIDevice deviceName]);

You can also check agains concrete models to load XIBS or make your interface setups

    if ([UIDevice type] == iPhone6Plus) {
    }
