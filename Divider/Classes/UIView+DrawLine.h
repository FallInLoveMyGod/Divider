//
//  UIView+Utils.h
//  Template-OC
//
//  Created by wuxiaohong on 15/4/3.
//  Copyright (c) 2015年 caijingpeng.haowu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DrawLine)
//画顶部的线
- (void)drawTopLine;
- (void)drawTopLineInsetLeft:(CGFloat)left right:(CGFloat)right;
- (void)drawTopLineInsetLeft:(CGFloat)left right:(CGFloat)right height:(CGFloat)lineHeight color:(UIColor *)color;


//画底部的线
- (void)drawBottomLine;
- (void)drawBottomLineByHeight:(CGFloat)height color:(UIColor *)color;
- (void)drawBottomLineInsetLeft:(CGFloat)left right:(CGFloat)right;
- (void)drawBottomLineInsetLeft:(CGFloat)left right:(CGFloat)right color:(UIColor *)color;
- (void)drawBottomLineInsetLeft:(CGFloat)left right:(CGFloat)right height:(CGFloat)lineHeight color:(UIColor *)color;

- (void)drawRightLineInsetTop:(CGFloat)top bottom:(CGFloat)bottom width:(CGFloat)lineWidth color:(UIColor *)color;

- (void)drawHorizonCenterLine;
- (void)drawHorizonCenterLineInsetTop:(CGFloat)top bottom:(CGFloat)bottom width:(CGFloat)lineWidth color:(UIColor *)color;

- (void)removeTopLine;
- (void)removeBottomLine;
- (void)removeAllSubviews;
- (void)removeSubviewsByTag:(NSInteger)tag;



/**
 *  -----------------             -------------
 |  ---          |             |  ---      |
 |  | |  -----   |             |  | |  ----|<---
 |  | |  |sub|   |   ======>   |  | |  |sub|
 |  ---  |   |   |             |  ---  |   |
 |       -----   |             -------------
 |          super|                   ^
 -----------------                   |
 */
- (void)sizeToFitSubviews;


// 给cell画线
- (void)drawCellLineAtIndexPath:(NSIndexPath *)indexPath rowCount:(NSInteger)rowCount;

@end
