//
//  GYunContextUtils.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "GYunContextUtils.h"
#import <UIKit/UIKit.h>

@implementation GYunContextUtils

+ (BOOL)isRunInSimulator{
#ifdef TARGET_IPHONE_SIMULATOR
    return YES;
#else
    return NO;
#endif
}

+ (float)systemVersion
{
    return [[[UIDevice currentDevice] systemVersion] floatValue];
}

+ (NSInteger)buildCode
{
    NSDictionary *dict = [[NSBundle mainBundle] infoDictionary];
    return [[dict objectForKey:@"CFBundleVersion"] integerValue];
}

+ (NSString *)version
{
    NSDictionary *dict = [[NSBundle mainBundle] infoDictionary];
    return [dict objectForKey:@"CFBundleShortVersionString"];
}


@end
