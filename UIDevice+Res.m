//
//  UIDevice+Reso.m
//  Simple UIDevice Category for handling different iOSs hardware resolutions
//
//  Created by Alejandro Luengo on 29/09/14.
//  (c) 2014 Intelygenz

//  iPhone 6 Plus   736x414 points      2208x1242 pixels    3x scale
//  iPhone 6        667x375 points      1334x750 pixels     2x scale
//  iPhone 5        568x320 points      1136x640 pixels     2x scale
//  iPhone 4s       480x320 points      960x640 pixels      2x scale
//  iPad            1024x768 points     1024x768 pixels     1x scale
//  iPad Retina     1024x768 points     2048x1536 pixels    2x scale

#import "UIDevice+Res.h"

@implementation UIDevice (Resolutions)

+ (NSString*)deviceName
{
    
    NSDictionary *devices = @{@"iPhone 4":          @"960",
                              @"iPhone 5":          @"1136",
                              @"iPhone 6":          @"1334",
                              @"iPhone 6 Plus":     @"2208",
                              @"iPad":              @"1024",
                              @"iPad Retina":       @"2048"
                              };
    
    UIScreenMode *mode = [UIScreen mainScreen].preferredMode;
    return [[devices allKeysForObject:[NSString stringWithFormat:@"%.f", mode.size.height]] firstObject];

}

+ (UIDeviceResolution)type
{
    
    UIScreenMode *mode = [UIScreen mainScreen].preferredMode;

    if (mode.size.height == 960) {
        return iPhone4;
    }
    else if (mode.size.height == 1136) {
        return iPhone5;
    }
    else if (mode.size.height == 1334) {
        return iPhone6;
    }
    else if (mode.size.height == 2208) {
        return iPhone6Plus;
    }
    else if (mode.size.height == 1024) {
        return iPad;
    }
    else if (mode.size.height == 2048) {
        return iPadRetina;
    }
    else
        return uknDevice;

}

@end
