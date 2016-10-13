//
//  UIImageView+GuiYun.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (GuiYun)

/**
 *   @author   硅云网络科技有限公司
 *   @brief    初始化imageView
 *   @params   rect   imageView的frame
 *   @params   image  imageView的图片
 */

+(UIImageView*)imageWithFrame:(CGRect)rect image:(NSString*)image;

@end
