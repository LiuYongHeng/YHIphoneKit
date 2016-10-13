//
//  NSJSONModelError.m
//  NiusaoCustomer
//
//  Created by 大笨钟 on 16/3/12.
//  Copyright © 2016年 hhn. All rights reserved.
//

#import "NSJSONModelError.h"

NSString *const NSJSONModelErrorDomain = @"NSJSONModelErrorDomain";

@implementation NSJSONModelError
+ (NSJSONModelError *)errorNilInput {
    return [NSJSONModelError errorWithDomain:NSJSONModelErrorDomain code:NSJSONModelErrorCodeNilInput userInfo:@{NSLocalizedDescriptionKey : @"用于创建NSJSONModel的参数为nil"}];
}

+ (NSJSONModelError *)errorDataInvalidWithDescription:(NSString *)description {
    return [NSJSONModelError errorWithDomain:NSJSONModelErrorDomain code:NSJSONModelErrorCodeDataInvalid userInfo:@{NSLocalizedDescriptionKey : description}];
}
@end
