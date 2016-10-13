//
//  NSJSONModelError.h
//  NiusaoCustomer
//
//  Created by 大笨钟 on 16/3/12.
//  Copyright © 2016年 hhn. All rights reserved.
//


#import <Foundation/Foundation.h>

extern NSString *const NSJSONModelErrorDomain;

typedef NS_ENUM(int, NSJSONModelErrorCode) {
    NSJSONModelErrorCodeNilInput = 1,
    NSJSONModelErrorCodeDataInvalid = 2
};

@interface NSJSONModelError : NSError

+ (id)errorNilInput;

+ (id)errorDataInvalidWithDescription:(NSString *)description;

@end
