//
//  NSString+DES.h
//  SpeedyKit
//
//  Created by YanYi on 2019/4/17.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (DES)

+ (NSString*)encrypt:(NSString*)plainText;
+ (NSString*)decrypt:(NSString*)encryptText;

@end

NS_ASSUME_NONNULL_END
