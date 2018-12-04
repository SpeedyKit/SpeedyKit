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



@end

NS_ASSUME_NONNULL_END
