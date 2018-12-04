//
//  UIColor+Extension.m
//  SpeedyKit
//
//  Created by YanYi on 2018/12/3.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+ (UIColor *)hexRGB:(NSUInteger)rgbValue {
    return [[UIColor alloc] initWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0
                                  green:((float)((rgbValue &0xFF00) >>8))/255.0
                                   blue:((float)( rgbValue &0xFF))/255.0
                                  alpha:1.0];
}

+ (UIColor *)hexRGB:(NSUInteger)rgbValue alpha:(float)alpha {
    return [[UIColor alloc] initWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0
                                  green:((float)((rgbValue & 0xFF00) >>8))/255.0
                                   blue:((float)( rgbValue & 0xFF))/255.0
                                  alpha:alpha];
}

+ (UIColor *)hexString:(NSString *)rgbString {
    NSString *valueString = nil;
    if ([rgbString hasPrefix:@"#"]) {
        valueString = [NSString stringWithFormat:@"0x%@", [rgbString substringFromIndex:1]];
    } else if ([rgbString hasPrefix:@"0x"]) {
        valueString = rgbString;
    } else {
        valueString = [NSString stringWithFormat:@"0x%@",rgbString];
    }
    unsigned long rgbValue = strtoul([valueString UTF8String],0,16);
    return [self hexRGB:rgbValue];
}

@end
