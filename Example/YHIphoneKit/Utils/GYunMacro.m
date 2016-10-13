//
//  GYunMacro.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "GYunMacro.h"
// 系统版本
#define SYSTEM_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define IS_IOS6 (SYSTEM_VERSION >= 6.0 && SYSTEM_VERSION < 7.0)
#define IS_IOS7 (SYSTEM_VERSION >= 7.0 && SYSTEM_VERSION < 8.0)
#define IS_IOS8 (SYSTEM_VERSION >= 8.0 && SYSTEM_VERSION < 9.0)
#define IS_IOS9 (SYSTEM_VERSION >= 9.0)

//判断是否是pad
#define IS_PAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

// 获取屏幕 宽度、高度
#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

//导航栏的高度、tab按钮的高
#define NAVIGATION_HEIGHT 64
#define TAB_HEIGHT 49

@implementation GYunMacro

@end
