//
//  ViewController.m
//  SpeedyKit
//
//  Created by YanYi on 2018/11/27.
//  Copyright © 2018 YanYi. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Extension.h"
#import "UIKit/UIPickerView/UIDatePicker+BirthDay.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIColor *backgroundcolor = [UIColor hexString:@"#00ff00"];
    self.view.backgroundColor = backgroundcolor;
    // Do any additional setup after loading the view, typically from a nib.
    [self createDatepicker];
}


- (void)createDatepicker {
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    UIDatePicker *datePicker = [UIDatePicker pickerBirthdayWithTimeSpan:100 calendarIdentifier:@"zh_CN" frame:CGRectMake(0, 200, screenBounds.size.width, 200)];
    [self.view addSubview:datePicker];
}

@end
