//
//  YHIphoneSDK.h
//  YHIphoneSDK
//
//  Created by LYH on 16/9/23.
//  Copyright © 2016年 LYH. All rights reserved.
//

#ifndef YHIphoneSDK_h
#define YHIphoneSDK_h

//判断空字符串
#define trim(str) [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]
#define isEmptyString(str) ([str isKindOfClass:[NSNull class]] || !str || [trim(str) isEqualToString:@""] || [str isEqualToString:@"<null>"])


#define VGREEN_COLOR     RGB(60,183,21)
#define VGRAY            RGB(232,234,238)
#define LABEL_BLACK      RGB(51,51,51)
#define NAVI_BG  [UIColor colorWithHexString:@"f94f50"]
#define ORANGE_COLOR  [UIColor colorWithHexString:@"fcaa00"]
#define LIGHT_BLACK_TEXT  [UIColor colorWithHexString:@"545454"]
#define LIGHTGRAY_TEXT  [UIColor colorWithHexString:@"999999"]




// toastText
#define k_CHECK_OUT_INFO    @"check_out_info"
#define ERROR_MSG           @"(Ｔ＿Ｔ)服务器开小差，请稍候重试"
#define LAST_PAGE_MSG       @"(;¬_¬) 已到最后一页啦"

#define NORMAL_IMAGE_HEIGHT  self.view.width*0.6;
//判断iphone6
#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

//判断iphone6+
#define iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)

#define SCREEN_WIDTH  ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

#define NC_WIDTH   ((SCREEN_WIDTH)/320)
#define NC_HEIGHT  ((SCREEN_HEIGHT)/568)


#define GET_SYSTEM_CONFIG [NCUserDefault ncUserDefaultObjForKey:@"systemConfig"]
#define ERROR_TOAST [NCProgressHUD showSuccessWithStatus:@"服务器异常，请稍后再试"]
//alertView
#define ALERTVIEW(_message_) UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:_message_ delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil] ;\
[alertView show] ;

#define PRESENTHISTORE_ALERT(_message_) UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"驳回原因" message:_message_ delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil] ;\
[alertView show] ;


#define FONT(fontsize)          [UIFont systemFontOfSize : fontsize]


/**
 * 强弱引用转换，用于解决代码块（block）与强引用self之间的循环引用问题
 * 调用方式: `@weakify_self`实现弱引用转换，`@strongify_self`实现强引用转换
 *
 * 示例：
 * @weakify_self
 * [obj block:^{
 * @strongify_self
 * self.property = something;
 * }];
 */
#ifndef    weakify_self
#if __has_feature(objc_arc)
#define weakify_self autoreleasepool{} __weak __typeof__(self) weakSelf = self;
#else
#define weakify_self autoreleasepool{} __block __typeof__(self) blockSelf = self;
#endif
#endif
#ifndef    strongify_self
#if __has_feature(objc_arc)
#define strongify_self try{} @finally{} __typeof__(weakSelf) self = weakSelf;
#else
#define strongify_self try{} @finally{} __typeof__(blockSelf) self = blockSelf;
#endif
#endif
/**
 * 强弱引用转换，用于解决代码块（block）与强引用对象之间的循环引用问题
 * 调用方式: `@weakify(object)`实现弱引用转换，`@strongify(object)`实现强引用转换
 *
 * 示例：
 * @weakify(object)
 * [obj block:^{
 * @strongify(object)
 * strong_object = something;
 * }];
 */
#ifndef    weakify
#if __has_feature(objc_arc)
#define weakify(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define weakify(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#endif
#ifndef    strongify
#if __has_feature(objc_arc)
#define strongify(object) try{} @finally{} __typeof__(object) strong##_##object = weak##_##object;
#else
#define strongify(object) try{} @finally{} __typeof__(object) strong##_##object = block##_##object;
#endif
#endif


// Judge whether it is an empty string.
//#define  isEmptyString(s) (s == nil || [s isKindOfClass:[NSNull class]] || ([s isKindOfClass:[NSString class]] && s.length == 0))

// Judge whether it is a nil or null object.
#define  isEmptyObject(obj) (obj == nil || [obj isKindOfClass:[NSNull class]])

// Judge whether it is a vaid dictionary.
#define  isDictionary(objDict) (objDict != nil && [objDict isKindOfClass:[NSDictionary class]])

// Judge whether it is a valid array.
#define  isArray(objArray) (objArray != nil && [objArray isKindOfClass:[NSArray class]])

#endif /* YHIphoneSDK_h */
