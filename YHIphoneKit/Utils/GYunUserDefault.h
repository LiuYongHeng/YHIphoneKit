//
//  GYunUserDefault.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GYunUserDefault : NSObject

+ (GYunUserDefault *)sharedInstance;

// 存
-(void)putString:(NSString *)str forKey:(NSString *)key;
-(void)putInt:(NSInteger)numberInt forKey:(NSString *)key;
-(void)putFloat:(float)numberFloat forKey:(NSString *)key;
-(void)putDouble:(double)numberDouble forKey:(NSString *)key;
-(void)putBool:(BOOL)numberBool forKey:(NSString *)key;
-(void)putData:(NSData *)data forKey:(NSString *)key;
-(void)putArray:(NSArray *)array forKey:(NSString *)key;
-(void)putDictionary:(NSDictionary *)dictionary forKey:(NSString *)key;

//取
-(NSString *)getStringForKey:(NSString *)key default:(NSString *)defaultStr;
-(NSInteger)getIntForKey:(NSString *)key;
-(float)putFloatForKey:(NSString *)key;
-(double)putDoubleForKey:(NSString *)key;
-(BOOL)getBoolForKey:(NSString *)key;
-(NSData *)getDataForKey:(NSString *)key default:(NSData *)defaultData;
-(NSArray *)getArrayForKey:(NSString *)key default:(NSArray *)defaultArray;
-(NSDictionary *)getDictionaryForKey:(NSString *)key default:(NSDictionary *)defaultDictionary;

//移除
-(void)removeForKey:(NSString *)key;

@end
