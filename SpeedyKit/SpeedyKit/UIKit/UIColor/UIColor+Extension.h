//
//  UIColor+Extension.h
//  SpeedyKit
//
//  Created by YanYi on 2018/12/3.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Extension)


/**
 根据16进制数值生成UIColor对象

 @param rgbValue 16进制数值
 @return color
 */
+ (UIColor *)hexRGB:(NSUInteger)rgbValue;


/**
 根据16进制数值 和透明度 生成UIColor对象

 @param rgbValue 16进制数值
 @param alpha 透明度
 @return color
 */
+ (UIColor *)hexRGB:(NSUInteger)rgbValue alpha:(float)alpha;



/**
 根据16进制字符串生成UIColor对象

 @param rgbString 16进制字符串
 @return color
 */
+ (UIColor *)hexString:(NSString *)rgbString;

@end

NS_ASSUME_NONNULL_END
