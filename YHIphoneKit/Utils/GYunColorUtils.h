//
//  GYunColorUtils.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GYunColorUtils : NSObject

+ (GYunColorUtils *)sharedInstance;

/**
 字符串颜色值转UIColor对象
 
 @param colorString 字符串颜色值，格式：#000000
 @return UIColor对象
 */
- (UIColor *)colorWithString:(NSString *)colorString;

/**
 字符串颜色值转UIImage对象
 
 @param colorString 字符串颜色值，格式：#000000
 @param size 图片大小
 @return UIImage对象
 */
- (UIImage *)imageWithString:(NSString *)colorString size:(CGSize)size;


@end
