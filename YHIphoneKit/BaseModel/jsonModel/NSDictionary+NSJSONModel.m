//
//  NSDictionary+NSJSONModel.m
//  NiusaoCustomer
//
//  Created by 大笨钟 on 16/3/12.
//  Copyright © 2016年 hhn. All rights reserved.
//


#import "NSDictionary+NSJSONModel.h"
#import "NSArray+NSJSONModel.h"

@implementation NSDictionary (NSJSONModel)

- (NSDictionary *)modelDictionaryWithClass:(Class)modelClass {
    NSMutableDictionary *modelDictionary = [NSMutableDictionary dictionary];
    for (NSString *key in self) {
        id object = [self objectForKey:key];
        if ([object isKindOfClass:[NSDictionary class]]) {
            [modelDictionary setObject:[[modelClass alloc] initWithJSONDictionary:object] forKey:key];
        } else if ([object isKindOfClass:[NSArray class]]) {
            [modelDictionary setObject:[object modelArrayWithClass:modelClass] forKey:key];
        } else {
            [modelDictionary setObject:object forKey:key];
        }
    }
    return modelDictionary;
}

- (NSDictionary *)toJSONDictionary {
    NSMutableDictionary *jsonDictionary = [NSMutableDictionary dictionary];
    for (NSString *key in self) {
        id object = [self objectForKey:key];
        if ([object isKindOfClass:[NSJSONModel class]]) {
            [jsonDictionary setObject:[(NSJSONModel *) object toJSONDictionary] forKey:key];
        } else if ([object isKindOfClass:[NSArray class]]) {
            [jsonDictionary setObject:[(NSArray *) object toJSONArray] forKey:key];
        } else {
            [jsonDictionary setObject:object forKey:key];
        }
    }
    return jsonDictionary;
}

@end
