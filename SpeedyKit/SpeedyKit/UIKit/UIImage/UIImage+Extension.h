//
//  UIImage+Extension.h
//  SpeedyKit
//
//  Created by YanYi on 2019/4/17.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Extension)

+ (instancetype)imageWithName:(NSString *)imageName bundle:(NSString *)bundle targetClass:(Class)targetClass;

@end

NS_ASSUME_NONNULL_END
