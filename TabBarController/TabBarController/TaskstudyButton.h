//
//  TaskstudyButton.h
//  TabBarController
//
//  Created by yaolizhi on 15/8/20.
//  Copyright (c) 2015年 yaolizhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskstudyButton : UIButton
@property (nonatomic,strong) UIImageView *navImageView;   //导航按钮的图标视图
@property (nonatomic,strong) UILabel     *navTitileLabel; //导航按钮的的图标

#pragma mark -  有图标和标题导航栏按钮
/**
 初始化带有图标和标题导航栏左侧按钮,最小Frame为30x30
 */
-(instancetype)initWithNavLeftBtnItemTitleAndImageViewFrame:(CGRect)frame withTitle:(NSString*)title withImageNamed:(NSString*)imageNamed;

/**
 初始化带有图标和标题导航栏右侧按钮,最小Frame为30x30
 */
-(instancetype)initWithNavRightBtnItemTitleAndImageViewFrame:(CGRect)frame withTitle:(NSString*)title withImageNamed:(NSString*)imageNamed;


#pragma mark -  有标题导航栏按钮
/**
 初始化只有标题导航栏左侧按钮
 */
-(instancetype)initWithNavLeftBtnItemTitleFrame:(CGRect)frame withTitle:(NSString*)title;
/**
 初始化只有标题导航栏右侧按钮
 */
-(instancetype)initWithNavRightBtnItemTitleFrame:(CGRect)frame withTitle:(NSString*)title;

#pragma mark -  只有图标导航栏按钮
/**
 初始化只有图标导航栏左侧按钮,最小Frame为30x30
 */
-(instancetype)initWithNavLeftBtnItemImageViewFrame:(CGRect)frame withImageNamed:(NSString*)imageNamed;
/**
 初始化只有图标导航栏右侧按钮,最小Frame为30x30
 */
-(instancetype)initWithNavRightBtnItemImageViewFrame:(CGRect)frame withImageNamed:(NSString*)imageNamed;

@end
