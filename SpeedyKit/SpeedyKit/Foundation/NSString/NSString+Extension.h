//
//  NSString+Extension.h
//  SpeedyKit
//
//  Created by YanYi on 2018/11/28.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Extension)

// RUL 编码
+ (NSString *)URLEncoding:(NSString *)URLString;
- (NSString *)URLEncoding;
// 清除空格符
- (NSString *)clearAllSpace ;
// 清除空格符
- (NSString *)clearLeadAndTailSpace;
// 获取decimalString
- (NSString *)decimalNumber;
/// 统计 某个字符在字符串中出现的次数
- (NSInteger)countOccurencesOfString:(NSString *)searchString;

/*
 123456789
 123,456,789
 ￥123,456,789.00z
 -539,222,988%
 1.23456789E8
 */
+ (NSString *)moneyStringWithString:(NSString *)string;

/// 阿拉伯数字金额转中文繁体
+ (NSString *)traditionalMoneyStringWithString:(NSString*)string;




@end

NS_ASSUME_NONNULL_END
