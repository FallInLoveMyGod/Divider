//
//  UIControl+FixMultiClick.h
//  app_pragram
//
//  Created by 田耀琦 on 2018/8/28.
//  Copyright © 2018年 self. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *      防止按钮重复点击
 */
@interface UIControl (FixMultiClick)
/*
 重复点击的间隔, 默认间隔 1s
 */
@property (nonatomic, assign) NSTimeInterval cs_acceptEventInterval;

/*
 记录最新点击成功的时间戳
 */
@property (nonatomic, assign) NSTimeInterval cs_acceptEventTime;

@end
