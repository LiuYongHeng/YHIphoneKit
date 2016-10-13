//
//  GYunContextUtils.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GYunContextUtils : NSObject

/**
 判断是否在模拟器上运行
 
 @return 是返回YES，否则NO
 */
+ (BOOL)isRunInSimulator;

/**
 系统的版本号码
 
 @return 返回系统版本号
 */
+ (float)systemVersion;

/**
 编译版本号
 
 @return 返回编译版本号
 */
+ (NSInteger)buildCode;

/**
 版本号
 
 @return 返回版本号
 */
+ (NSString *)version;

@end
