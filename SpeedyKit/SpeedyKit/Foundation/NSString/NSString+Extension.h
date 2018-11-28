//
//  NSString+Extension.h
//  SpeedyKit
//
//  Created by YanYi on 2018/11/28.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Extension)

// RUL 编码
+ (NSString *)URLEncoding:(NSString *)URLString;

@end

NS_ASSUME_NONNULL_END
