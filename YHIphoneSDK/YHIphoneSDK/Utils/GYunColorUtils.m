//
//  GYunColorUtils.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "GYunColorUtils.h"

@interface GYunColorUtils (){
    
        //用来缓存获取过的颜色
    NSDictionary *mCache; 
}

@end
@implementation GYunColorUtils

+ (GYunColorUtils *)sharedInstance
{
    static GYunColorUtils *color;
    static dispatch_once_t pred = 0;//使用dispatch_once用来确保单例模式
    dispatch_once(&pred, ^{
        color = [[GYunColorUtils alloc] init];
    });
    return color;
}

- (UIColor *)colorWithString:(NSString *)colorString
{
    //先从缓存中获取
    UIColor *color = mCache[colorString];
    if (color != nil) {
        return color;
    }
    
    if ([colorString hasPrefix:@"#"] && colorString.length == 7) {
        NSString *hexString = [NSString stringWithFormat:@"0x%@", [colorString substringFromIndex:1]];
        NSInteger hexValue = strtoul([hexString UTF8String], 0, 0);
        color = [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255
                                green:((float)((hexValue & 0xFF00) >> 8)) / 255
                                 blue:((float)(hexValue & 0xFF)) / 255
                                alpha:1.0];
        [mCache setValue:color forKey:colorString];
        return color;
    }
    
    return [UIColor whiteColor];
}

- (UIImage *)imageWithString:(NSString *)colorString size:(CGSize)size
{
    UIColor *color = [self colorWithString:colorString];
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
