//
//  ViewController.m
//  陀螺仪
//
//  Created by 崔剑 on 15/6/29.
//  Copyright (c) 2015年 UI_CuiJian. All rights reserved.
//

#import "ViewController.h"
#import <CoreMotion/CoreMotion.h>

@interface ViewController ()

@property (nonatomic, strong) CMMotionManager *motion;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 初始化manager
    self.motion = [[CMMotionManager alloc] init];
    // 判断传感器在手机上是否可用
    if (self.motion.accelerometerAvailable) {
        // 数据更新时间
        self.motion.accelerometerUpdateInterval = 1;
        // 开始
        [self.motion startAccelerometerUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
            
            if (error) {
                // 停止
                [self.motion stopAccelerometerUpdates];
                
                NSLog(@"error:%@", error);
            } else {
                // 获取数据,加速度或旋转速度，可以直接从这三个成员变量中得到
                double x = accelerometerData.acceleration.x;
                double y = accelerometerData.acceleration.y;
                double z = accelerometerData.acceleration.z;
                NSLog(@"x = %f, y = %f, z = %f", x, y, z);
            }
            
        }];
    }
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
