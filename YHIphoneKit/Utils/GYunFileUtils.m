//
//  GYunFileUtils.m
//  GyunIOSHelper
//
//  Created by LYH on 16/5/30.
//  Copyright © 2016年 硅云网络科技有限公司. All rights reserved.
//

#import "GYunFileUtils.h"
#import "GYunImageUtils.h"
#import "GYunValidators.h"
@implementation GYunFileUtils


+ (void)mkdirs:(NSString *)filePath
{
    if (![GYunFileUtils exists:filePath]) {
        [[NSFileManager defaultManager] createDirectoryAtPath:filePath withIntermediateDirectories:YES attributes:nil error:nil];
    }
}

+ (BOOL)exists:(NSString *)filePathName
{
    if([GYunValidators isEmptyStr:filePathName]){
        return NO;
    }
    
    return [[NSFileManager defaultManager] fileExistsAtPath:filePathName];
}

+ (NSString *)getDirPath:(NSString *)subDirPath;
{
    NSString *rootDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    NSString *fullDirPath = [NSString stringWithFormat:@"%@/%@", rootDir, subDirPath];
    [GYunFileUtils mkdirs:fullDirPath];
    return fullDirPath;
}

+ (void)deleteFile:(NSString *)filePathName
{
    if (![GYunFileUtils exists:filePathName]) {
        return;
    }
    [[NSFileManager defaultManager] removeItemAtPath:filePathName error:nil];
}

+ (NSData *)saveImage:(UIImage *)image toFilePathName:(NSString *)filePathName quality:(CGFloat)quality toLimit:(CGFloat) toLimit;
{
    NSData *imageData = [GYunImageUtils compressJpeg:image quality:quality toLimit:toLimit];
    [imageData writeToFile:filePathName atomically:YES];
    NSLog(@"保存图片路径:%@", filePathName);
    return imageData;
}

+(NSData *)getDataFromFilePathName:(NSString *)filePathName
{
    return [NSData dataWithContentsOfFile:filePathName];
}

@end
