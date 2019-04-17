//
//  NSString+UINib.m
//  SpeedyKit
//
//  Created by YanYi on 2019/4/17.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import "NSString+UINib.h"

@implementation NSString (UINib)

+ (instancetype)nibNameWithTargetClass:(Class)targetClass {
    NSBundle *currentBundle = [NSBundle bundleForClass:targetClass];
    NSString *bundleName = currentBundle.infoDictionary[@"CFBundleName"];
    bundleName = [NSString stringWithFormat:@"%@.bundle", bundleName];
    NSString *nibName = [NSString stringWithFormat:@"%@/%@", bundleName, NSStringFromClass(targetClass)];
    return nibName;
}

@end
