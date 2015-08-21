//
//  TaskstudyButton.m
//  TabBarController
//
//  Created by yaolizhi on 15/8/20.
//  Copyright (c) 2015年 yaolizhi. All rights reserved.
//

#import "TaskstudyButton.h"

@implementation TaskstudyButton
@synthesize navImageView;   //导航按钮的图标视图
@synthesize navTitileLabel; //导航按钮的的图标

#pragma mark -  有图标和标题导航栏按钮
/**
 初始化导航栏左侧按钮
 */
-(instancetype)initWithNavLeftBtnItemTitleAndImageViewFrame:(CGRect)frame withTitle:(NSString*)title withImageNamed:(NSString*)imageNamed
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //添加导航图片视图
        navImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
        [navImageView setContentMode:UIViewContentModeScaleAspectFit];
        [navImageView setImage:[UIImage imageNamed:imageNamed]];
        [self addSubview:navImageView];
        
        //添加导航标题标签
        navTitileLabel = [[UILabel alloc]initWithFrame:CGRectMake(35, 0,frame.size.width-35, 30)];
        [navTitileLabel setTextColor:[UIColor whiteColor]];
        [navTitileLabel setFont:[UIFont systemFontOfSize:20.0]];
        [navTitileLabel setTextAlignment:NSTextAlignmentLeft];
        [navTitileLabel setText:title];
        [self addSubview:navTitileLabel];
    }
    return self;
}

/**
 初始化导航栏右侧按钮
 */
-(instancetype)initWithNavRightBtnItemTitleAndImageViewFrame:(CGRect)frame withTitle:(NSString*)title withImageNamed:(NSString*)imageNamed
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //添加导航图片视图
        navImageView = [[UIImageView alloc]initWithFrame:CGRectMake(frame.size.width-30, 0, 30, 30)];
        [navImageView setContentMode:UIViewContentModeScaleAspectFit];
        [navImageView setImage:[UIImage imageNamed:imageNamed]];
        [self addSubview:navImageView];
        
        //添加导航标题标签
        navTitileLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,frame.size.width-35, 30)];
        [navTitileLabel setTextColor:[UIColor whiteColor]];
        [navTitileLabel setFont:[UIFont systemFontOfSize:20.0]];
        [navTitileLabel setTextAlignment:NSTextAlignmentRight];
        [navTitileLabel setText:title];
        [self addSubview:navTitileLabel];
    }
    return self;
}


#pragma mark -  只有标题导航栏按钮
/**
 初始化只有标题导航栏左侧按钮
 */
-(instancetype)initWithNavLeftBtnItemTitleFrame:(CGRect)frame withTitle:(NSString*)title
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //添加导航标题标签
        navTitileLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,frame.size.width, 30)];
        [navTitileLabel setTextColor:[UIColor whiteColor]];
        [navTitileLabel setFont:[UIFont systemFontOfSize:20.0]];
        [navTitileLabel setTextAlignment:NSTextAlignmentLeft];
        [navTitileLabel setText:title];
        [self addSubview:navTitileLabel];
    }
    return self;
}

/**
 初始化只有标题导航栏右侧按钮
 */
-(instancetype)initWithNavRightBtnItemTitleFrame:(CGRect)frame withTitle:(NSString*)title
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //添加导航标题标签
        navTitileLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,frame.size.width, 30)];
        [navTitileLabel setTextColor:[UIColor whiteColor]];
        [navTitileLabel setFont:[UIFont systemFontOfSize:20.0]];
        [navTitileLabel setTextAlignment:NSTextAlignmentRight];
        [navTitileLabel setText:title];
        [self addSubview:navTitileLabel];
    }
    return self;
}

#pragma mark -  只有图标导航栏按钮
/**
 初始化只有图标导航栏左侧按钮,最小Frame为30x30
 */
-(instancetype)initWithNavLeftBtnItemImageViewFrame:(CGRect)frame withImageNamed:(NSString*)imageNamed
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //添加导航图片视图
        navImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
        [navImageView setContentMode:UIViewContentModeScaleAspectFit];
        [navImageView setImage:[UIImage imageNamed:imageNamed]];
        [self addSubview:navImageView];
    }
    return self;
}

/**
 初始化只有图标导航栏右侧按钮,最小Frame为30x30
 */
-(instancetype)initWithNavRightBtnItemImageViewFrame:(CGRect)frame withImageNamed:(NSString*)imageNamed
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //添加导航图片视图
        navImageView = [[UIImageView alloc]initWithFrame:CGRectMake(frame.size.width-30, 0, 30, 30)];
        [navImageView setContentMode:UIViewContentModeScaleAspectFit];
        [navImageView setImage:[UIImage imageNamed:imageNamed]];
        [self addSubview:navImageView];
    }
    return self;
}


@end
