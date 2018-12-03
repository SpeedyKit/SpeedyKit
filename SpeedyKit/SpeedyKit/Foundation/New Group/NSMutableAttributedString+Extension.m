//
//  NSMutableAttributedString+Extension.m
//  SpeedyKit
//
//  Created by YanYi on 2018/12/3.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "NSMutableAttributedString+Extension.h"

@implementation NSMutableAttributedString (Extension)

- (NSMutableAttributedString *)setUnderlineStyle {
    
    // 此 一举解决 iOS 10.3 不显示删除线的系统bug
    [self setAttributes:@{NSStrikethroughStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle],NSBaselineOffsetAttributeName : @(NSUnderlineStyleSingle)} range:NSMakeRange(0, self.length)];
    return self;
}

- (NSMutableAttributedString *)setColor:(UIColor *)color range:(NSRange)range {
    [self addAttribute:NSForegroundColorAttributeName value:color range:range];
    return self;
}

- (NSMutableAttributedString *)setFont:(UIFont *)font range:(NSRange)range {
    [self addAttribute:NSFontAttributeName value:font range:range];
    return self;
}


@end
