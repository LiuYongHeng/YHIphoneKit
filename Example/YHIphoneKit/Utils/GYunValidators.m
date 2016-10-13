//
//  GYunValidators.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "GYunValidators.h"

@implementation GYunValidators

+(BOOL)isEmptyObj:(id)obj
{
    if(obj == nil || obj == NULL){
        return YES;
    }
    if([obj isKindOfClass:[NSNull class]]){
        return YES;
    }
    
    return NO;
}

+(BOOL)isEmptyStr:(NSString *)str
{
    if([GYunValidators isEmptyObj:str]){
        return YES;
    }
    
    if ([[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    
    return NO;
}

+(BOOL)isEmptyArray:(NSArray *)array
{
    if([GYunValidators isEmptyObj:array]){
        return YES;
    }
    
    if(array.count == 0){
        return YES;
    }
    
    return NO;
}

+(BOOL)isEmptyDictionary:(NSDictionary *)dictionary
{
    if([GYunValidators isEmptyObj:dictionary]){
        return YES;
    }
    
    return NO;
}

@end
