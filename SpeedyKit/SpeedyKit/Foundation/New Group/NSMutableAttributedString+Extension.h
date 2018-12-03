//
//  NSMutableAttributedString+Extension.h
//  SpeedyKit
//
//  Created by YanYi on 2018/12/3.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (Extension)

// 加中划线
- (NSMutableAttributedString *)setUnderlineStyle;

// 设置文本颜色
- (NSMutableAttributedString *)setColor:(UIColor *)color range:(NSRange)range;
// 设置字体大小
- (NSMutableAttributedString *)setFont:(UIFont *)font range:(NSRange)range;

@end

NS_ASSUME_NONNULL_END
