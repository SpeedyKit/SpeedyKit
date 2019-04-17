//
//  UIImage+Extension.m
//  SpeedyKit
//
//  Created by YanYi on 2019/4/17.
//  Copyright © 2019 YanYi. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (instancetype)imageWithName:(NSString *)imageName bundle:(NSString *)bundle targetClass:(Class)targetClass {
    NSInteger scale = [[UIScreen mainScreen] scale];
    NSBundle *currentBundle = [NSBundle bundleForClass:targetClass];
    NSString *name = [NSString stringWithFormat:@"%@@%zdx", imageName, scale];
    NSString *dir = [NSString stringWithFormat:@"%@.bundle", bundle];
    NSString *path = [currentBundle pathForResource:name ofType:@"png" inDirectory:dir];
    return path ? [UIImage imageWithContentsOfFile:path] : nil;
}

@end
