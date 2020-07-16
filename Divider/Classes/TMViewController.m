//
//  TMViewController.m
//  Divider
//
//  Created by 田耀琦 on 2020/7/16.
//

#import "TMViewController.h"

@interface TMViewController ()

@end

@implementation TMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self creatImageView];
}

- (void)creatImageView {
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 200, 320)];
    imageV.backgroundColor = [UIColor redColor];
    NSBundle *bd = [NSBundle bundleForClass:[self class]];
    NSString *path = [bd pathForResource:@"1.jpg" ofType:nil inDirectory:@"Divider.bundle"];
    imageV.image = [UIImage imageWithContentsOfFile:path];
    [self.view addSubview:imageV];
}

@end
