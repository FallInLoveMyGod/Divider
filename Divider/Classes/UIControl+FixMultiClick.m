//
//  UIControl+FixMultiClick.m
//  app_pragram
//
//  Created by 田耀琦 on 2018/8/28.
//  Copyright © 2018年 self. All rights reserved.
//

#import "UIControl+FixMultiClick.h"
#import <objc/runtime.h>
@implementation UIControl (FixMultiClick)
// 添加响应时间
static const char *UIControl_acceptEventTime = "UIControl_acceptEventTime";
- (void)setCs_acceptEventTime:(NSTimeInterval)cs_acceptEventTime {
    objc_setAssociatedObject(self, UIControl_acceptEventTime, @(cs_acceptEventTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSTimeInterval)cs_acceptEventTime {
    return [objc_getAssociatedObject(self, UIControl_acceptEventTime) doubleValue];
}

// 添加响应间隔
static const char *UIControl_acceptEventInterval = "UIControl_acceptEventInterval";
- (void)setCs_acceptEventInterval:(NSTimeInterval)cs_acceptEventInterval {
    objc_setAssociatedObject(self, UIControl_acceptEventInterval, @(cs_acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSTimeInterval)cs_acceptEventInterval {
    return [objc_getAssociatedObject(self, UIControl_acceptEventInterval) doubleValue];
}

// 方法交换
+ (void)load {
    Method oldMethod = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method newMethod = class_getInstanceMethod(self, @selector(cz_swizzAction:to:forEvent:));
    method_exchangeImplementations(oldMethod, newMethod);
}

- (void)cz_swizzAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {

    if ([NSDate date].timeIntervalSince1970 - self.cs_acceptEventTime < self.cs_acceptEventInterval) {
        return;
    }
    
    if (self.cs_acceptEventInterval > 0) {
        self.cs_acceptEventTime = [NSDate date].timeIntervalSince1970;
    }
    
    [self cz_swizzAction:action to:target forEvent:event];
}


@end
