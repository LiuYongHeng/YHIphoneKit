//
//  GYunFileUtils.h
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GYunFileUtils : NSObject

/**
 创建指定的文件夹
 
 @param dirPath 文件夹路径
 */
+ (void)mkdirs:(NSString *)dirPath;

/**
 判断文件是否存在
 
 @param filePathName 文件全路径
 @return 存在就返回YES，否则NO
 */
+ (BOOL)exists:(NSString *)filePathName;

/**
 获取文件夹路径，自己指定相对路径返回全路径
 
 @param subDirPath 相对路径
 @return 返回全路径
 */
+ (NSString *)getDirPath:(NSString *)subDirPath;

/**
 删除文件
 
 @param filePathName 文件全路径
 */
+ (void)deleteFile:(NSString *)filePathName;

/**
 保存图片到文件
 
 @param image 图片对象
 @param filePathName 需要保存到文件的地址
 @param quality 图片质量
 @param toLimit 限制大小，－1表示不限制
 @return 返回保存后的数据
 */
+ (NSData *)saveImage:(UIImage *)image toFilePathName:(NSString *)filePathName quality:(CGFloat)quality toLimit:(CGFloat) toLimit;

/**
 从文件中读取NSData
 
 @param filePathName 本地文件路径
 @return 文件内容
 */
+(NSData *)getDataFromFilePathName:(NSString *)filePathName;
@end
