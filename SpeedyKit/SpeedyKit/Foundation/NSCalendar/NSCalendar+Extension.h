//
//  NSCalendar+Extension.h
//  SpeedyKit
//
//  Created by YanYi on 2018/12/3.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, DateSinceCurrentAt) {
    DateSinceCurrentAtSame,     // 今天
    DateSinceCurrentAtNext,     // 明天
    DateSinceCurrentAtLast,     // 昨天
    DateSinceCurrentAtDef       // 其他日期
};

NS_ASSUME_NONNULL_BEGIN

@interface NSCalendar (Extension)


// 判断给定日期字符串是星期几
+ (NSString *)weekDayStringFromDateString:(NSString *)dateString;
// 判断给定日期字符串是星期几
+ (NSString *)weekDayStringFromDate:(NSDate *)date;

// 判断给定日期字符串是今天、明天 还是其他日期
+ (DateSinceCurrentAt)getDateSinceWithDateString:(NSString *)dateString;

// 判断给定日期是今天、明天 还是其他日期
+ (DateSinceCurrentAt)getDateSinceWithDate:(NSDate *)date;


@end

NS_ASSUME_NONNULL_END
