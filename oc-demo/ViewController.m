//
//  ViewController.m
//  oc-demo
//
//  Created by cuimingqiang on 16/3/14.
//  Copyright © 2016年 cuimingqiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [[UIButton alloc] init];
    UIButton *button1 = [[UIButton alloc] init];
    NSDictionary *views = NSDictionaryOfVariableBindings(button,button1);
    button.backgroundColor = [UIColor blackColor];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [self.view addSubview:button];

    NSArray *constraints1 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[button]-|" options:0 metrics:nil views:views];
    NSArray *constraints2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-28-[button(==50)]" options:0 metrics:nil views:views];
    [self.view addConstraints:constraints1];
    [self.view addConstraints:constraints2];

    button1.backgroundColor = [UIColor blueColor];
    button1.translatesAutoresizingMaskIntoConstraints = NO;
    [button1 setTitle:@"你妹" forState:UIControlStateNormal];
    [self.view addSubview:button1];

    NSArray *con1 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[button1]-|" options:0 metrics:nil views:views];
    NSArray *con2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[button]-[button1(==40)]" options:0 metrics:nil views:views];
    [self.view addConstraints:con1];
    [self.view addConstraints:con2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
