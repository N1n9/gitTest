//
//  AppDelegate.m
//  陀螺仪
//
//  Created by 崔剑 on 15/6/29.
//  Copyright (c) 2015年 UI_CuiJian. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
        
//    self.motionManager = [[CMMotionManager alloc] init];
//    if (!self.motionManager.accelerometerAvailable) {
//        NSLog(@"传感器不可用");
//    }
//    self.motionManager.accelerometerUpdateInterval = 0.01;
//    
//    [self.motionManager startAccelerometerUpdates];
    
    
}

//- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
//    NSLog(@"结束");
//    CMAccelerometerData *newestAccel = self.motionManager.accelerometerData;
//    
//    double X = newestAccel.acceleration.x;
//    double Y = newestAccel.acceleration.y;
//    double Z = newestAccel.acceleration.z;
//    
//    NSLog(@"X = %f, Y = %f, Z = %f", X, Y, Z);
//    
//    // Gravity 获取手机的重力值在各个方向上的分量,根据这个就可以获得手机的空间位置,倾斜角度等
//    
//    double gravityX = self.motionManager.deviceMotion.gravity.x;
//    double gravityY = self.motionManager.deviceMotion.gravity.y;
//    double gravityZ = self.motionManager.deviceMotion.gravity.z;
//    
//    // 获取手机的倾斜角度
//    
//    double zTheta = atan2(gravityZ, sqrtf(gravityX * gravityX + gravityY *gravityY) / M_PI*180.0);
//    double xyTheta = atan2(gravityX,gravityY)/M_PI*180.0;
//    
//    NSLog(@"%f", zTheta);
//    NSLog(@"%f", xyTheta);
//}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
