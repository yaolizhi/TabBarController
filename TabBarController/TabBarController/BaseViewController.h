//
//  BaseViewController.h
//  TabBarController
//
//  Created by yaolizhi on 15/8/20.
//  Copyright (c) 2015年 yaolizhi. All rights reserved.
//
//  该基类用于，每个二级导航视图的继承父类
//
//

#import <UIKit/UIKit.h>
#import "TaskstudyButton.h"

@interface BaseViewController : UIViewController

@property (nonatomic,strong) TaskstudyButton *navLeftBtnItem;
@property (nonatomic,strong) TaskstudyButton *navRightBtnItem;

/**
 初始化并设置标题
 */
-(instancetype)initTitle:(NSString*)title;
/**
 导航栏右侧按钮方法
 */
-(void)navRightBtnAction:(UIButton*)sender;
/**
 导航栏左右按钮方法
 */
-(void)navLeftBtnAction:(UIButton*)sender;
@end
