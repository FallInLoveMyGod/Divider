//
//  UIImage+Color.h
//  UIImage+Categories
//
//  Created by lisong on 16/9/4.
//  Copyright © 2016年 lisong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, GradientType) {
	GradientTypeTopToBottom = 0,//从上到下
	GradientTypeLeftToRight = 1,//从左到右
	GradientTypeUpleftToLowright = 2,//左上到右下
	GradientTypeUprightToLowleft = 3,//右上到左下
	
};

@interface UIImage (Color)

/** 根据颜色生成纯色图片 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/** 取图片某一像素的颜色 */
- (UIColor *)colorAtPixel:(CGPoint)point;

/** 获得灰度图 */
- (UIImage *)convertToGrayImage;

/**改变图片的颜色***/

- (UIImage *) imageWithTintColor:(UIColor *)tintColor ;

/*
 *转换成马赛克,level代表一个点转为多少level*level的正方形
 */
+ (UIImage *)transToMosaicImage:(UIImage*)orginImage blockLevel:(NSUInteger)level ;


	
/**  设置图片的渐变色(颜色->图片)
	 
@param colors 渐变颜色数组  @param gradientType 渐变样式  @param imgSize 图片大小  @return 颜色->图片  */
+ (UIImage *)gradientColorImageFromColors:(NSArray*)colors gradientType:(GradientType)gradientType imgSize:(CGSize)imgSize;
	

@end
