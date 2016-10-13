//
//  UIImageView+GuiYun.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "UIImageView+GuiYun.h"

@implementation UIImageView (GuiYun)

+(UIImageView*)imageWithFrame:(CGRect)rect image:(NSString*)image;{
    
    UIImageView *imageView = [[UIImageView alloc]init];
    if (imageView) {
        imageView.frame = rect;
        imageView.image = [UIImage imageNamed:image];
        return imageView;
    }
    return nil;
}

@end
