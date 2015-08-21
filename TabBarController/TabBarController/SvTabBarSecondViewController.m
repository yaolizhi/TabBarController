//
//  SvTabBarSecondViewController.m
//  TabBarController
//
//  Created by yaolizhi on 15/8/17.
//  Copyright (c) 2015年 yaolizhi. All rights reserved.
//

#import "SvTabBarSecondViewController.h"

@interface SvTabBarSecondViewController ()

@end

@implementation SvTabBarSecondViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *vvvv = [UIButton buttonWithType:UIButtonTypeCustom];
    [vvvv setFrame:CGRectMake(100, 100, 200, 60)];
    [vvvv setTitle:@"跳转项目" forState:UIControlStateNormal];
    [vvvv setBackgroundColor:[UIColor orangeColor]];
    [vvvv addTarget:self action:@selector(Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:vvvv];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)Action:(id)ds
{
    SvTabBarSecondViewController *b = [[SvTabBarSecondViewController alloc]initTitle:@"第三个视图"];
    [self.navigationController pushViewController:b animated:YES];
}


@end
