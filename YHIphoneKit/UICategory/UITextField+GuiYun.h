//
//  UITextField+GuiYun.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (GuiYun)


/**
 *   @author   硅云网络科技有限公司
 *   @brief    初始化UITextField
 *   @params   rect   frame
 *   @params   style  外观样式
 *   @params   placeHolder 占位符
 */

+(UITextField*)textFieldWithFrame:(CGRect)rect
                            style:(UITextBorderStyle*)style
                      placeHolder:(NSString*)placeHolder;
@end
