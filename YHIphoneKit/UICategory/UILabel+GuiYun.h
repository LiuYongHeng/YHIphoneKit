//
//  UILabel+GuiYun.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (GuiYun)

/**
 *   @brief    初始化UILabel
 *   @params   rect   frame
 *   @params   title  标题
 *   @params   textAligment 字体居中
 *   @params   textColor    字体颜色
 *   @params   font         字体大小
 */

+(UILabel*)labelWithFrame:(CGRect)rect
                    title:(NSString*)title
             textAligment:(NSTextAlignment*)textAligment
                textColor:(UIColor*)textColor font:(UIFont*)font;
@end
