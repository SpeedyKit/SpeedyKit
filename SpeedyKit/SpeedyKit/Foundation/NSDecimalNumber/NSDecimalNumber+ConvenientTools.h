//
//  NSDecimalNumber+ConvenientTools.h
//  XFConvenientToolKit
//
//  Created by YanYi on 2018/11/6.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDecimalNumber (ConvenientTools)

/*
 默认为 金额计算保留两位小数 
 
 */

// 金额计算 结果保留两位小数
+ (NSDecimalNumberHandler *)amountHandler;

// 加
+ (NSDecimalNumber *)stringByAdding:(NSString *)firstNumber andNumber:(NSString *)secondString;

+ (NSDecimalNumber *)numberByAdding:(NSNumber *)firstNumber andNumber:(NSNumber *)secondNumber;
// 减
+ (NSDecimalNumber *)stringBySubtracting:(NSString *)firstNumber andNumber:(NSString *)secondString;

+ (NSDecimalNumber *)numberBySubtracting:(NSNumber *)firstNumber andNumber:(NSNumber *)secondNumber;

// 乘
+ (NSDecimalNumber *)stringByMultiplyingBy:(NSString *)firstNumber andNumber:(NSString *)secondString;

+ (NSDecimalNumber *)numberByMultiplyingBy:(NSNumber *)firstNumber andNumber:(NSNumber *)secondNumber;

// 除
+ (NSDecimalNumber *)stringByDividingBy:(NSString *)firstNumber andNumber:(NSString *)secondString;

+ (NSDecimalNumber *)numberByDividingBy:(NSNumber *)firstNumber andNumber:(NSNumber *)secondNumber;

@end
