//
//  UITextField+GuiYun.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "UITextField+GuiYun.h"

@implementation UITextField (GuiYun)

+(UITextField*)textFieldWithFrame:(CGRect)rect style:(UITextBorderStyle*)style placeHolder:(NSString*)placeHolder;{
    
    UITextField *textField  = [[UITextField alloc]init];
    if (textField) {
        textField.frame = rect;
        textField.borderStyle = *(style);
        textField.placeholder = placeHolder;
        return textField;
    }
    return nil;
}
@end
