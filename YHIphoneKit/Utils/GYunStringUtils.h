//
//  GYunStringUtils.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GYunStringUtils : NSObject

/**
 传人一个字符串，如果该字符串空，就用默认字符串代替
 
 @param str 传入的字符串
 @param ifEmptyDefault 默认字符串
 @return 字符串
 */
+(NSString *)string:(NSString *)str ifEmptyDefault:(NSString *)ifEmptyDefault;

/**
 传人一个字符串，如果该字符串空，就用@""代替
 
 @param str 传入的字符串
 @return 返回一个非nil或者NULL等空对象的字符串
 */
+(NSString *)string:(NSString *)str;

/**
 创建一个32位的随机数，字母都是转成小写的
 
 @return 一个32位的随机数
 */
+(NSString*)createUUID;

@end
