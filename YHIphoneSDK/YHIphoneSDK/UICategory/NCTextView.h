//
//  NCTextView.h
//  NiusaoCustomer
//
//  Created by clare.bin on 16/2/26.
//  Copyright © 2016年 hhn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+GuiYunFrame.h"

@interface NCTextView : UITextView
@property(nonatomic, copy)   NSString *placeholder;
@property(nonatomic, strong) UILabel *placeholderLabel;
@property(nonatomic, strong) UIImage *backgroundImage;

@end
