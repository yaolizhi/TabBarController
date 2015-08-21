//
//  SvTabBarFirstViewController.m
//  TabBarController
//
//  Created by yaolizhi on 15/8/17.
//  Copyright (c) 2015年 yaolizhi. All rights reserved.
//

#import "SvTabBarFirstViewController.h"
#import "SvTabBarSecondViewController.h"

@interface SvTabBarFirstViewController ()

@end

@implementation SvTabBarFirstViewController
@synthesize TabBarHidden;


- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *vvvv = [UIButton buttonWithType:UIButtonTypeCustom];
    [vvvv setFrame:CGRectMake(100, 100, 200, 60)];
    [vvvv setBackgroundColor:[UIColor orangeColor]];
    [vvvv setTitle:@"第一个视图" forState:UIControlStateNormal];
    [vvvv addTarget:self action:@selector(Action:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:vvvv];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    NSLog(@"%@ rotate!", self.title);
}

- (NSString*)description
{
    return [NSString stringWithFormat:@"title: %@", self.title];
}

-(void)Action:(UIButton*)sender
{
    [self.navigationController pushViewController:[[SvTabBarSecondViewController alloc]initTitle:@"第二页"] animated:YES];
    
}


-(void)navRightBtnAction:(UIButton *)sender
{
    
    SvTabBarSecondViewController *a = [[SvTabBarSecondViewController alloc]initTitle:@"第二页"];
    
    [self.navigationController pushViewController:a animated:YES];
}



@end
