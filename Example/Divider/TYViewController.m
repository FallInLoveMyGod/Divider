//
//  TYViewController.m
//  Divider
//
//  Created by FallInLoveMyGod on 07/14/2020.
//  Copyright (c) 2020 FallInLoveMyGod. All rights reserved.
//

#import "TYViewController.h"
#import <Divider/Divider-umbrella.h>
@interface TYViewController ()

@end

@implementation TYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    testView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:testView];
    
    [testView drawBottomLineByHeight:3 color:[UIColor redColor]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
