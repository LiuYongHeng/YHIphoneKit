//
//  NSJSONModelKeyMapper.h
//  NiusaoCustomer
//
//  Created by 大笨钟 on 16/3/12.
//  Copyright © 2016年 hhn. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface NSJSONModelKeyMapper : NSObject

//映射字典自身的key为json的字段名，value为model的属性名
- (id)initWithDictionary:(NSDictionary *)dict;

- (NSString *)modelKeyMappedFromJsonKey:(NSString *)jsonKey;

- (NSString *)jsonKeyMappedFromModelKey:(NSString *)modelKey;

@end
