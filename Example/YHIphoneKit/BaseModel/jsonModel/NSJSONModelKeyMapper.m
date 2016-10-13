//
//  NSJSONModelKeyMapper.m
//  NiusaoCustomer
//
//  Created by 大笨钟 on 16/3/12.
//  Copyright © 2016年 hhn. All rights reserved.
//

#import "NSJSONModelKeyMapper.h"

@interface NSJSONModelKeyMapper ()
@property(strong, nonatomic) NSMutableDictionary *jsonToModelMap;
@property(strong, nonatomic) NSMutableDictionary *modelToJsonMap;

@end

@implementation NSJSONModelKeyMapper

- (id)initWithDictionary:(NSDictionary *)dict {
    self = [super init];
    if (self != nil) {
        self.jsonToModelMap = [[NSMutableDictionary alloc] initWithDictionary:dict];
        self.modelToJsonMap = [[NSMutableDictionary alloc] initWithCapacity:[dict count]];
        for (NSString *key in dict) {
            self.modelToJsonMap[dict[key]] = key;
        }
    }
    return self;
}


- (NSString *)modelKeyMappedFromJsonKey:(NSString *)jsonKey {
    NSString *mapped = [self.jsonToModelMap objectForKey:jsonKey];
    return mapped ? mapped : jsonKey;
}

- (NSString *)jsonKeyMappedFromModelKey:(NSString *)modelKey {
    NSString *mapped = [self.modelToJsonMap objectForKey:modelKey];
    return mapped ? mapped : modelKey;
}

@end
