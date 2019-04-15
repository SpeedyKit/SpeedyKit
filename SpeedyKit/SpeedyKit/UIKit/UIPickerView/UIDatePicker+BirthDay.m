//
//  UIDatePicker+BirthDay.m
//  SpeedyKit
//
//  Created by 谢飞 on 2019/4/15.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import "UIDatePicker+BirthDay.h"

@implementation UIDatePicker (BirthDay)

+ (UIDatePicker *)pickerBirthdayWithTimeSpan:(NSInteger)timeSpan
                          calendarIdentifier:(NSString *)identifier
                                       frame:(CGRect)frame  {
    
    UIDatePicker *datePicker = [[UIDatePicker alloc]initWithFrame:frame];
    datePicker.backgroundColor = [UIColor clearColor];
    NSLocale *locale = [[NSLocale alloc]initWithLocaleIdentifier:@"zh_CN"];
    datePicker.locale = locale;
    [datePicker setDatePickerMode:UIDatePickerModeDate];
    NSDate *today = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSCalendar *calendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *comps = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:today];
    [comps setYear:-timeSpan];
    [comps setMonth:-12];
    [comps setDay:0];
    NSDate *startDate = [calendar dateByAddingComponents:comps toDate:today options:0];
    datePicker.minimumDate = startDate;
    datePicker.maximumDate = today;
    return datePicker;
}


@end
