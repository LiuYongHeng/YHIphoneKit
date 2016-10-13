//
//  GYunImageUtils.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "GYunImageUtils.h"

@implementation GYunImageUtils

+(UIImage *)scaleImage:(UIImage *)img toSize:(CGSize)toSize
{
    UIGraphicsBeginImageContext(toSize);
    [img drawInRect:CGRectMake(0, 0, toSize.width, toSize.height)];
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}

+ (NSData *)compressJpeg:(UIImage *)image quality:(CGFloat)quality toLimit:(CGFloat) toLimit
{
    CGFloat compression = quality;
    NSData *imageData = UIImageJPEGRepresentation(image, compression);
    if(toLimit == -1){
        //-1表示不需要压缩
        return imageData;
    }
    
    NSLog(@"source image size:%.2fkb", imageData.length / 1024.0);
    while (imageData.length > toLimit && compression > 0.1) {
        compression -= 0.1;
        imageData = UIImageJPEGRepresentation(image, compression);
    }
    NSLog(@"final image size:%.2fkb", imageData.length / 1024.0);
    return imageData;
}

+(NSData*)compressPngImg:(UIImage*)img{
    NSData *imageData = UIImagePNGRepresentation(img);
    return imageData;
}

@end
