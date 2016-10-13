//
//  NSArray+NSJSONModel.m
//  NiusaoCustomer
//
//  Created by 大笨钟 on 16/3/12.
//  Copyright © 2016年 hhn. All rights reserved.
//

#import "NSArray+NSJSONModel.h"
#import "NSJSONModel.h"

@implementation NSArray (NSJSONModel)

- (NSArray *)modelArrayWithClass:(Class)modelClass {
    NSMutableArray *modelArray = [NSMutableArray array];
    for (id object in self) {
        if ([object isKindOfClass:[NSArray class]]) {
            [modelArray addObject:[object modelArrayWithClass:modelClass]];
        } else if ([object isKindOfClass:[NSDictionary class]]) {
            [modelArray addObject:[[modelClass alloc] initWithJSONDictionary:object]];
        } else {
            [modelArray addObject:object];
        }
    }
    return modelArray;
}


- (NSArray *)toJSONArray {
    NSMutableArray *jsonArray = [NSMutableArray array];

    for (id object in self) {
        if ([object isKindOfClass:[NSJSONModel class]]) {
            NSDictionary *objectDict = [(NSJSONModel *) object toJSONDictionary];
            [jsonArray addObject:objectDict];
        } else if ([object isKindOfClass:[NSArray class]]) {
            [jsonArray addObject:[object toJSONArray]];
        } else {
            [jsonArray addObject:object];
        }
    }

    return jsonArray;
}

@end
