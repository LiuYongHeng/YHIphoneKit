//
//  GYunUserDefault.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "GYunUserDefault.h"
#import "GYunValidators.h"

@implementation GYunUserDefault


+ (GYunUserDefault *)sharedInstance
{
    static GYunUserDefault *instance;
    static dispatch_once_t pred = 0;//使用dispatch_once用来确保单例模式
    dispatch_once(&pred, ^{
        instance = [[GYunUserDefault alloc] init];
    });
    return instance;
}
////////////////////////put存入方法////////////////////////////////////
-(void)putString:(NSString *)str forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setObject:str forKey:key];
}

-(void)putInt:(NSInteger)numberInt forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setInteger:numberInt forKey:key];
}

-(void)putFloat:(float)numberFloat forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setFloat:numberFloat forKey:key];
}

-(void)putDouble:(double)numberDouble forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setDouble:numberDouble forKey:key];
}

-(void)putBool:(BOOL)numberBool forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setBool:numberBool forKey:key];
}

-(void)putData:(NSData *)data forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
}

-(void)putArray:(NSArray *)array forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setObject:array forKey:key];
}

-(void)putDictionary:(NSDictionary *)dictionary forKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] setObject:dictionary forKey:key];
}

////////////////////////////get获取方法////////////////////////////
-(NSString *)getStringForKey:(NSString *)key default:(NSString *)defaultStr
{
    NSString *str = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if(![GYunValidators isEmptyStr:str]){
        return str;
    }
    
    return defaultStr;
}

-(NSInteger)getIntForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}

-(float)putFloatForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] floatForKey:key];
}

-(double)putDoubleForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] doubleForKey:key];
}

-(BOOL)getBoolForKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

-(NSData *)getDataForKey:(NSString *)key default:(NSData *)defaultData
{
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if(![GYunValidators isEmptyObj:data]){
        return data;
    }
    return defaultData;
}

-(NSArray *)getArrayForKey:(NSString *)key default:(NSArray *)defaultArray
{
    NSArray *array = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if(![GYunValidators isEmptyArray:array]){
        return array;
    }
    return defaultArray;
}

-(NSDictionary *)getDictionaryForKey:(NSString *)key default:(NSDictionary *)defaultDictionary
{
    NSDictionary *dic = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if(![GYunValidators isEmptyDictionary:dic]){
        return dic;
    }
    return defaultDictionary;
}

-(void)removeForKey:(NSString *)key
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
}

@end
