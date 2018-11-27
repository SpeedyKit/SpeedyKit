//
//  NSString+ConvenientTools.h
//  XFConvenientToolKit
//
//  Created by YanYi on 2018/11/27.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ConvenientTools)



// RUL 编码
+ (NSString *)URLEncoding:(NSString *)URLString;

/// 带货币符号的金额格式，小数位最多4，最少2，带千位符
+ (NSString *)currencyStringWithDoubleValue:(double)doubleValue;
/// 不带货币符号的金额格式，小数位最多4，最少2，带千位符
+ (NSString *)decimalStringWithDoubleValue:(double)doubleValue;

@end

NS_ASSUME_NONNULL_END
