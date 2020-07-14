//
//  UIColor+HexString.h
//  Pra
//
//  Created by 田耀琦 on 2017/5/24.
//  Copyright © 2017年 田耀琦. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface UIColor (HexString)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;
+ (UIColor *)colorWithRGBHex:(UInt32)hex;
@end
