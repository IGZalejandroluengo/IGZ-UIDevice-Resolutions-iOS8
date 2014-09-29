//
//  UIDevice+Reso.m
//  Simple UIDevice Category for handling different iOSs hardware resolutions
//
//  Created by Alejandro Luengo on 29/09/14.
//  (c) 2014 Intelygenz

#import <UIKit/UIKit.h>

enum {
    uknDevice   = 0,
    iPhone4     = 1,
    iPhone5     = 2,
    iPhone6     = 3,
    iPhone6Plus = 4,
    iPad        = 5,
    iPadRetina  = 6
}; typedef NSUInteger UIDeviceResolution;

@interface UIDevice (Resolutions) { }

+ (UIDeviceResolution)type;
+ (NSString*)deviceName;

@end
