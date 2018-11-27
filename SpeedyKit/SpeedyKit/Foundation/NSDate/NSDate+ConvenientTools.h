//
//  NSDate+ConvenientTools.h
//  XFConvenientToolKit
//
//  Created by YanYi on 2018/11/1.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (ConvenientTools)



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

@end

NS_ASSUME_NONNULL_END
