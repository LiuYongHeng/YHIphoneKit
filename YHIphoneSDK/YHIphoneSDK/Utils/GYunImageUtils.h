//
//  GYunImageUtils.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GYunImageUtils : NSObject

/**
 缩放图片到给定的尺寸
 
 @param img 传入的图片
 @param toSize 缩放到指定尺寸
 @return 返回缩放过的图片
 */
+(UIImage*)scaleImage:(UIImage*)img toSize:(CGSize)toSize;

/**
 压缩图片到指定限制大小，图片质量默认0.7
 
 @param img 传入的图片
 @param quality 图片质量
 @param toLimit 限制大小，单位B，例如400K，应该传入：400*1024，如果不需要就传－1
 @return 返回压缩过的图片
 */
+ (NSData *)compressJpeg:(UIImage *)image quality:(CGFloat)quality toLimit:(CGFloat) toLimit;

/**
 降低图片的质量，尺寸不变（压缩png格式的）
 
 @param img 传入的图片
 @param quality 降到质量，范围在(0.0-1.0)之间，越高质量就越好
 @return 返回压缩过的图片
 */
+(NSData*)compressPngImg:(UIImage*)src;


@end
