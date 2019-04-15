//
//  UIDatePicker+BirthDay.h
//  SpeedyKit
//
//  Created by 谢飞 on 2019/4/15.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDatePicker (BirthDay)


/**
 生成一个选择生日的datePickerView

 @param timeSpan 时间跨度：单位（年）
 @param identifier 日历类型 如中文 ：zh_CN
 @param frame frame
 */
+ (UIDatePicker *)pickerBirthdayWithTimeSpan:(NSInteger)timeSpan
                          calendarIdentifier:(NSString *)identifier
                                       frame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
