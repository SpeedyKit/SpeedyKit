//
//  NSDecimalNumber+ConvenientTools.m
//  XFConvenientToolKit
//
//  Created by YanYi on 2018/11/6.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "NSDecimalNumber+ConvenientTools.h"

@implementation NSDecimalNumber (ConvenientTools)

+ (NSDecimalNumberHandler *)amountHandler {
    return  [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundUp
                                                                   scale:2
                                                        raiseOnExactness:NO
                                                         raiseOnOverflow:NO
                                                        raiseOnUnderflow:NO
                                                     raiseOnDivideByZero:YES];
}

+ (NSDecimalNumber *)stringByAdding:(NSString *)firstNumber andNumber:(NSString *)secondString {
    NSDecimalNumber *firstDNumber =  [NSDecimalNumber decimalNumberWithString:firstNumber];
    NSDecimalNumber *secondDNumber = [NSDecimalNumber decimalNumberWithString:secondString];
    return [firstDNumber decimalNumberByAdding:secondDNumber withBehavior:[self amountHandler]];
}

+ (NSDecimalNumber *)numberByAdding:(NSNumber *)firstNumber andNumber:(NSNumber *)secondNumber {
    NSDecimalNumber *firstDNumber = [NSDecimalNumber decimalNumberWithDecimal:[firstNumber decimalValue]];
    NSDecimalNumber *secondDNumber = [NSDecimalNumber decimalNumberWithDecimal:[secondNumber decimalValue]];
    return [firstDNumber decimalNumberByAdding:secondDNumber withBehavior:[self amountHandler]];
}

// 减
+ (NSDecimalNumber *)stringBySubtracting:(NSString *)firstNumber andNumber:(NSString *)secondString {
    NSDecimalNumber *firstDNumber =  [NSDecimalNumber decimalNumberWithString:firstNumber];
    NSDecimalNumber *secondDNumber = [NSDecimalNumber decimalNumberWithString:secondString];
    return [firstDNumber decimalNumberBySubtracting:secondDNumber withBehavior:[self amountHandler]];
}

+ (NSDecimalNumber *)numberBySubtracting:(NSNumber *)firstNumber andNumber:(NSNumber *)secondNumber {
    NSDecimalNumber *firstDNumber = [NSDecimalNumber decimalNumberWithDecimal:[firstNumber decimalValue]];
    NSDecimalNumber *secondDNumber = [NSDecimalNumber decimalNumberWithDecimal:[secondNumber decimalValue]];
    return [firstDNumber decimalNumberBySubtracting:secondDNumber withBehavior:[self amountHandler]];
}

// 乘
+ (NSDecimalNumber *)stringByMultiplyingBy:(NSString *)firstNumber andNumber:(NSString *)secondString {
    NSDecimalNumber *firstDNumber =  [NSDecimalNumber decimalNumberWithString:firstNumber];
    NSDecimalNumber *secondDNumber = [NSDecimalNumber decimalNumberWithString:secondString];
    return [firstDNumber decimalNumberByMultiplyingBy:secondDNumber withBehavior:[self amountHandler]];
}

+ (NSDecimalNumber *)numberByMultiplyingBy:(NSNumber *)firstNumber andNumber:(NSNumber *)secondNumber {
    NSDecimalNumber *firstDNumber = [NSDecimalNumber decimalNumberWithDecimal:[firstNumber decimalValue]];
    NSDecimalNumber *secondDNumber = [NSDecimalNumber decimalNumberWithDecimal:[secondNumber decimalValue]];
    return [firstDNumber decimalNumberByMultiplyingBy:secondDNumber withBehavior:[self amountHandler]];
}

// 除
+ (NSDecimalNumber *)stringByDividingBy:(NSString *)firstNumber andNumber:(NSString *)secondString {
    NSDecimalNumber *firstDNumber =  [NSDecimalNumber decimalNumberWithString:firstNumber];
    NSDecimalNumber *secondDNumber = [NSDecimalNumber decimalNumberWithString:secondString];
    return [firstDNumber decimalNumberByDividingBy:secondDNumber withBehavior:[self amountHandler]];
}

+ (NSDecimalNumber *)numberByDividingBy:(NSNumber *)firstNumber andNumber:(NSNumber *)secondNumber {
    NSDecimalNumber *firstDNumber = [NSDecimalNumber decimalNumberWithDecimal:[firstNumber decimalValue]];
    NSDecimalNumber *secondDNumber = [NSDecimalNumber decimalNumberWithDecimal:[secondNumber decimalValue]];
    return [firstDNumber decimalNumberByDividingBy:secondDNumber withBehavior:[self amountHandler]];
}


@end
