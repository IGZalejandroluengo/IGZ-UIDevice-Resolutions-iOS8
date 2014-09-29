UIDevice-Resolutions-iOS8
=========================

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

Extra tips
==========

If you update your XIB code to iOS 8 the new screen resolutions the compiler will break your views. There is a easy workaround to avoid that. Just remove ALL your launch images and add a Launch Screen.xib (file->new->file) and then select 'Launch Screen'. After that just to to simulated metrics in properties and make sure inherit is enabled (first option)

Then if you run your code and change device modes in simulators, [UIDevice deviceName] will detect iPhone 6 and iPhone 6 plus as iPhone 5, so you can keep your old code in a nutshell.

