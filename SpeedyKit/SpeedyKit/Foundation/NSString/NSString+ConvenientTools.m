//
//  NSString+ConvenientTools.m
//  XFConvenientToolKit
//
//  Created by YanYi on 2018/11/27.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "NSString+ConvenientTools.h"

@implementation NSString (ConvenientTools)

+ (NSString *)URLEncoding:(NSString *)URLString {
    return [URLString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]];
}

+ (NSString *)currencyStringWithDoubleValue:(double)doubleValue {
    NSNumberFormatter *moneyFormatter = [[NSNumberFormatter alloc] init];
    moneyFormatter.numberStyle = kCFNumberFormatterCurrencyStyle;
    moneyFormatter.maximumFractionDigits = 4;
    moneyFormatter.minimumFractionDigits = 2;
    return [moneyFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}

+ (NSString *)decimalStringWithDoubleValue:(double)doubleValue {
    NSNumberFormatter *moneyFormatter = [[NSNumberFormatter alloc] init];
    moneyFormatter.numberStyle = kCFNumberFormatterDecimalStyle;
    moneyFormatter.maximumFractionDigits = 4;
    moneyFormatter.minimumFractionDigits = 2;
    return [moneyFormatter stringFromNumber:[NSNumber numberWithDouble:doubleValue]];
}


@end
