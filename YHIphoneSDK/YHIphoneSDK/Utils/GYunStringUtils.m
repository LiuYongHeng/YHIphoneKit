//
//  GYunStringUtils.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "GYunStringUtils.h"
#import "GYunValidators.h"

@implementation GYunStringUtils

+(NSString *)string:(NSString *)str ifEmptyDefault:(NSString *)ifEmptyDefault
{
    if(![GYunValidators isEmptyObj:str]){
        return str;
    }else{
        return ifEmptyDefault;
    }
}

+(NSString *)string:(NSString *)str
{
    return [GYunStringUtils string:str ifEmptyDefault:@""];
}

+(NSString*)createUUID
{
    NSString *uuid = [[NSUUID UUID] UUIDString];
    return [uuid stringByReplacingOccurrencesOfString:@"-" withString:@""].lowercaseString;
}
@end
