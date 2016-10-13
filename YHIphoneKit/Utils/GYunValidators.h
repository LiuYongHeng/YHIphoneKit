//
//  GYunValidators.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GYunValidators : NSObject


/**
 对象判空
 
 @param obj 需要判空的对象
 @return 如果对象是空（这里的空指不能正常使用，就返回YES
 */
+(BOOL)isEmptyObj:(id)obj;

/**
 字符串判空
 
 @param str 需要判空的字符串
 @return 如果字符串是空（这里的空包括空串，就返回YES
 */
+(BOOL)isEmptyStr:(NSString *)str;

/**
 数组判空
 
 @param array 需要判空的数组
 @return 如果数组是空（这里的空包括数组对象存在但是里面没有元素，就返回YES
 */
+(BOOL)isEmptyArray:(NSArray *)array;

/**
 字典判空
 
 @return 如果字典是空，就返回YES
 */
+(BOOL)isEmptyDictionary:(NSDictionary *)dictionary;

@end
