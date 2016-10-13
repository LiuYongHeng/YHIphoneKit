//
//  UILabel+GuiYun.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "UILabel+GuiYun.h"

@implementation UILabel (GuiYun)

+(UILabel*)labelWithFrame:(CGRect)rect
                    title:(NSString*)title
             textAligment:(NSTextAlignment*)textAligment
                textColor:(UIColor*)textColor font:(UIFont*)font;{
    
    UILabel *label = [[UILabel alloc]init];
    if (label) {
        label.frame = rect;
        label.text = title;
        label.textAlignment = *(textAligment);
        label.textColor = textColor;
        label.font = font;
        return label;
    }
    return nil;
}
@end
