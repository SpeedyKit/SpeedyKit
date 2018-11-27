//
//  NSDate+ConvenientTools.m
//  XFConvenientToolKit
//
//  Created by YanYi on 2018/11/1.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "NSDate+ConvenientTools.h"

@implementation NSDate (ConvenientTools)

+ (NSDate *)dateFromDateString:(NSString *)dateString foramtterString:(NSString *)foramtterString {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:foramtterString];
    return [format dateFromString:dateString];
}

+ (NSDate *)dateFromString:(NSString *)datestring {
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [format dateFromString:datestring];
    return date;
}

+ (BOOL)date:(NSDate*)date isBetweenDate:(NSDate*)beginDate andDate:(NSDate*)endDate {
    if ([date compare:beginDate] == NSOrderedAscending)
        return NO;
    if ([date compare:endDate] == NSOrderedDescending)
        return NO;
    return YES;
}

@end
