//
//  NSDate+Extension.m
//  SpeedyKit
//
//  Created by YanYi on 2018/11/28.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

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


+ (DateSinceCurrentAt)getDateSinceWithDateString:(NSString *)dateString {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSDate *currentDate = [NSDate date];
    NSString *currentDateString = [formatter stringFromDate:currentDate];
    NSTimeInterval  oneDate = 24*60*60*1;  //24小时的长度
    NSDate * nextDate = [[NSDate alloc]initWithTimeInterval:+oneDate sinceDate:currentDate];
    NSString *nextDateString = [formatter stringFromDate:nextDate];
    NSDate *lastDate = [[NSDate alloc]initWithTimeInterval:-oneDate sinceDate:currentDate];
    NSString *lastDateString = [formatter stringFromDate:lastDate];
    if ([currentDateString compare:dateString] == NSOrderedSame) {
        return DateSinceCurrentAtSame;
    } else if([nextDateString compare:dateString] == NSOrderedSame) {
        return DateSinceCurrentAtNext;
    } else  if ([lastDateString compare:dateString]){
        return DateSinceCurrentAtLast;
    } else {
        return DateSinceCurrentAtDef;
    }
}

+ (DateSinceCurrentAt)getDateSinceWithDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateString = [formatter stringFromDate:date];
    return [self getDateSinceWithDateString:dateString];
}

@end
