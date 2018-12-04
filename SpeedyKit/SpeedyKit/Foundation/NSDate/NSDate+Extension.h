//
//  NSDate+Extension.h
//  SpeedyKit
//
//  Created by YanYi on 2018/11/28.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, DateSinceCurrentAt) {
    DateSinceCurrentAtSame,     // 今天
    DateSinceCurrentAtNext,     // 明天
    DateSinceCurrentAtLast,     // 昨天
    DateSinceCurrentAtDef       // 其他日期
};

@interface NSDate (Extension)


/**
 根据日期和foramtterString 获取date
 
 @param dateString dateString description
 @param foramtterString foramtterString description
 @return return value description
 */
+ (NSDate *)dateFromDateString:(NSString *)dateString foramtterString:(NSString *)foramtterString ;


+ (NSDate *)dateFromString:(NSString *)datestring ;


/**
 判断一个日期是否介于另外两个日期之间
 
 @param date date description
 @param beginDate beginDate description
 @param endDate endDate description
 @return return value description
 */
+ (BOOL)date:(NSDate*)date isBetweenDate:(NSDate*)beginDate andDate:(NSDate*)endDate;



// 判断给定日期字符串是今天、明天 还是其他日期
+ (DateSinceCurrentAt)getDateSinceWithDateString:(NSString *)dateString;

// 判断给定日期是今天、明天 还是其他日期
+ (DateSinceCurrentAt)getDateSinceWithDate:(NSDate *)date;


@end

NS_ASSUME_NONNULL_END
