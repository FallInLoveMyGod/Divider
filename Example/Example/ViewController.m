//
//  ViewController.m
//  Example
//
//  Created by 田耀琦 on 2020/7/15.
//  Copyright © 2020 FallInLoveMyGod. All rights reserved.
//

#import "ViewController.h"
#import <Divider-umbrella.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
       testView.backgroundColor = [UIColor purpleColor];
       [self.view addSubview:testView];
       
       [testView drawBottomLineByHeight:3 color:[UIColor redColor]];
    
    TMViewController *n = [TMViewController new];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self presentViewController:[TMViewController new] animated:true completion:nil];
}


@end
