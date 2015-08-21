//
//  BaseViewController.m
//  TabBarController
//
//  Created by yaolizhi on 15/8/20.
//  Copyright (c) 2015年 yaolizhi. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController
@synthesize navLeftBtnItem;
@synthesize navRightBtnItem;


-(instancetype)initTitle:(NSString*)title
{
    self = [super init];
    if (self)
    {
        [self.view setBackgroundColor:[UIColor grayColor]];
        [self setTitle:title];
        
        navLeftBtnItem = [[TaskstudyButton alloc] initWithNavLeftBtnItemTitleAndImageViewFrame:CGRectMake(0, 0, 80, 30) withTitle:@"返回" withImageNamed:@"delhistory"];
        //        [navLeftBtnItem setBackgroundColor:[UIColor orangeColor]];
        [navLeftBtnItem addTarget:self action:@selector(navLeftBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *LeftItemButton = [[UIBarButtonItem alloc] initWithCustomView:navLeftBtnItem];
        [self.navigationItem setLeftBarButtonItem:LeftItemButton];
        
        
        navRightBtnItem = [[TaskstudyButton alloc] initWithNavRightBtnItemImageViewFrame:CGRectMake(0, 0, 80, 30) withImageNamed:@"delhistory"];
        [navRightBtnItem setBackgroundColor:[UIColor orangeColor]];
        [navRightBtnItem addTarget:self action:@selector(navRightBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *RightItemButton = [[UIBarButtonItem alloc] initWithCustomView:navRightBtnItem];
        [self.navigationItem setRightBarButtonItem:RightItemButton];
        [self setHidesBottomBarWhenPushed:YES];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)navRightBtnAction:(UIButton *)sende
{
    
}

-(void)navLeftBtnAction:(UIButton*)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
