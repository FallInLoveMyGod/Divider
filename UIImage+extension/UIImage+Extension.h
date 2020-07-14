//
//  UIImage+Extension.h
//  app_pragram
//
//  Created by zglnbjys on 2018/12/17.
//  Copyright © 2018年 self. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Extension)

#pragma mark -

/* 获取处理过的新图片 */
- (void)ex_imageWithCorner:(CGSize)corner cornerRaduis:(CGFloat)radius fillColor:(UIColor *)fillColor completion:(void(^)(UIImage *image))completion;

/* 根据url获取图片 */
+ (CGSize)getImageSizeWithURL:(id)URL;

/* 判断是否有alpha通道 */
- (BOOL)hasAlphaChannel;

/* 编码成base64 */
- (NSString *)encodeToBase64String;

/* base64解码成图片 */
+ (UIImage *)imageDecodeWithBase64String:(NSString *)base64String;

+ (UIImage *)imageWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END


