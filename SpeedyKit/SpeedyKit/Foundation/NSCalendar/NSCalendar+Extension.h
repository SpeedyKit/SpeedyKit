//
//  NSCalendar+Extension.h
//  SpeedyKit
//
//  Created by YanYi on 2018/12/3.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>



NS_ASSUME_NONNULL_BEGIN

@interface NSCalendar (Extension)


// 判断给定日期字符串是星期几
+ (NSString *)weekDayStringFromDateString:(NSString *)dateString;
// 判断给定日期字符串是星期几
+ (NSString *)weekDayStringFromDate:(NSDate *)date;


//根据date获取日
+ (NSInteger)convertDateToDay:(NSDate *)date;

//根据date获取月
+ (NSInteger)convertDateToMonth:(NSDate *)date ;

//根据date获取年
+ (NSInteger)convertDateToYear:(NSDate *)date ;

//根据date获取当月周几 (美国时间周日-周六为 1-7,改为0-6方便计算)
+ (NSInteger)convertDateToWeekDay:(NSDate *)date ;

//根据date获取当月周几
+ (NSInteger)convertDateToFirstWeekDay:(NSDate *)date ;

//根据date获取当月总天数
+ (NSInteger)convertDateToTotalDays:(NSDate *)date ;

@end

NS_ASSUME_NONNULL_END
