//
//  UIView+Utils.m
//  Template-OC
//
//  Created by wuxiaohong on 15/4/3.
//  Copyright (c) 2015年 caijingpeng.haowu. All rights reserved.
//

#import "UIView+DrawLine.h"
//#import "Masonry.h"
int TOP_LINE_TAG = 1000000;
int BOTTOM_LINE_TAG = 1000001;

#define kLineHeight 0.5f
#define CD_LineColor HEXColor(@"#CCCCCC",1.0)
//#define CD_LineColor [UIColor grayColor]

@implementation UIView (DrawLine)

#pragma mark - top line
- (void)drawTopLine
{
    [self drawTopLineInsetLeft:0 right:0 height:kLineHeight color:CD_LineColor];
}

- (void)drawTopLineInsetLeft:(CGFloat)left right:(CGFloat)right
{
    [self drawTopLineInsetLeft:left right:right height:kLineHeight color:CD_LineColor];
}

- (void)drawTopLineInsetLeft:(CGFloat)left right:(CGFloat)right height:(CGFloat)lineHeight color:(UIColor *)color
{
    if ([self viewWithTag:TOP_LINE_TAG] != nil) {
        [[self viewWithTag:TOP_LINE_TAG] removeFromSuperview];
        
    }
    UIImageView *line = [[UIImageView alloc] init];
    line.tag = TOP_LINE_TAG;
    [self addSubview:line];
    line.layer.masksToBounds = true;
    line.image = [UIImage imageWithColor:color];
    
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).with.offset(left);
        make.right.equalTo(self).with.offset(-right);
        make.top.equalTo(self.mas_top);
        make.height.equalTo(@(lineHeight));
    }];
}

#pragma mark - bottom line
- (void)drawBottomLine
{
    [self drawBottomLineInsetLeft:0 right:0 height:kLineHeight color:CD_LineColor];
}

- (void)drawBottomLineByHeight:(CGFloat)height color:(UIColor *)color
{
    [self drawBottomLineInsetLeft:0 right:0 height:height color:color];
}

- (void)drawBottomLineInsetLeft:(CGFloat)left right:(CGFloat)right color:(UIColor *)color
{
    [self drawBottomLineInsetLeft:left right:right height:kLineHeight color:color];
}

- (void)drawBottomLineInsetLeft:(CGFloat)left right:(CGFloat)right
{
    [self drawBottomLineInsetLeft:left right:right height:kLineHeight color:CD_LineColor];
}

- (void)drawBottomLineInsetLeft:(CGFloat)left right:(CGFloat)right height:(CGFloat)lineHeight color:(UIColor *)color
{
    if ([self viewWithTag:BOTTOM_LINE_TAG] != nil) {
        [[self viewWithTag:BOTTOM_LINE_TAG] removeFromSuperview];
        
    }
    UIImageView *line = [[UIImageView alloc] init];
    line.tag = BOTTOM_LINE_TAG;
    [self addSubview:line];
    line.layer.masksToBounds = true;
    line.image = [UIImage imageWithColor:color];
    
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self).with.offset(left);
        make.right.equalTo(self).with.offset(-right);
        make.top.equalTo(self.mas_bottom).with.offset(-lineHeight);
        make.height.equalTo(@(lineHeight));
    }];
}

#pragma mark - right line
- (void)drawRightLineInsetTop:(CGFloat)top bottom:(CGFloat)bottom width:(CGFloat)lineWidth color:(UIColor *)color
{
    UIImageView *line = [[UIImageView alloc] init];
    [self addSubview:line];
    line.layer.masksToBounds = true;
    line.image = [UIImage imageWithColor:color];
    
    @weakify(self);
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.right.equalTo(self);
        make.top.equalTo(self).with.offset(top);
        make.bottom.equalTo(self).with.offset(-bottom);
        make.width.equalTo(@(lineWidth));
    }];
}

#pragma mark - horizon center line
- (void)drawHorizonCenterLine{
    [self drawHorizonCenterLineInsetTop:0 bottom:0 width:kLineHeight color:CD_LineColor];
}

- (void)drawHorizonCenterLineInsetTop:(CGFloat)top bottom:(CGFloat)bottom width:(CGFloat)lineWidth color:(UIColor *)color
{
    UIImageView *line = [[UIImageView alloc] init];
    [self addSubview:line];
    line.layer.masksToBounds = true;
    line.image = [UIImage imageWithColor:color];
    
    @weakify(self);
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.top.equalTo(self).with.offset(top);
        make.bottom.equalTo(self).with.offset(-bottom);
        make.width.equalTo(@(lineWidth));
        make.centerX.equalTo(self);
    }];
}


#pragma mark - remover subviews
- (void)removeAllSubviews
{
    for (UIView *view in self.subviews)
    {
        [view removeFromSuperview];
    }
}

- (void)removeSubviewsByTag:(NSInteger)tag
{
    UIView *view = [self viewWithTag:tag];
    if (view != nil)
    {
        [view removeFromSuperview];
    }
}

- (void)sizeToFitSubviews
{
    CGFloat minX = CGFLOAT_MAX;
    CGFloat minY = CGFLOAT_MAX;
    CGFloat maxX = 0;
    CGFloat maxY = 0;
    for (UIView *view in self.subviews)
    {
        if (CGRectGetMinX(view.frame) < minX)
        {
            minX = CGRectGetMinX(view.frame);
        }
        
        if (CGRectGetMaxX(view.frame) > maxX)
        {
            maxX = CGRectGetMaxX(view.frame);
        }
        
        if (CGRectGetMinY(view.frame) < minY)
        {
            minY = CGRectGetMinY(view.frame);
        }
        
        if (CGRectGetMaxY(view.frame) > maxY)
        {
            maxY = CGRectGetMaxY(view.frame);
        }
    }
    
    CGRect frame = self.frame;
    frame.size.width -= (frame.size.width - maxX);
    frame.size.height -= (frame.size.height - maxY);
    self.frame = frame;
}

//移除顶部线条
- (void)removeTopLine
{
    if ([self viewWithTag:TOP_LINE_TAG] != nil) {
        [[self viewWithTag:TOP_LINE_TAG] removeFromSuperview];
        
    }
}
//移除底部线条
- (void)removeBottomLine
{
    if ([self viewWithTag:BOTTOM_LINE_TAG] != nil) {
        [[self viewWithTag:BOTTOM_LINE_TAG] removeFromSuperview];
        
    }
}

- (void)drawCellLineAtIndexPath:(NSIndexPath *)indexPath rowCount:(NSInteger)rowCount{
    NSInteger row = indexPath.row;
    //最后一个
 
    if(row == 0){
        [self drawTopLine];
//        if(row == rowCount-1){
//            [self drawBottomLine];
//        }
    }else{
        [self removeTopLine];
    }
    [self drawBottomLineInsetLeft:15 right:15];
}
@end
