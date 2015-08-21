//
//  BaseRootViewController.h
//  tabBarVC
//
//  Created by yaolizhi on 15/8/19.
//  Copyright (c) 2015年 ZY. All rights reserved.
//
//  该基类用于，每个导航视图根视图的继承父类
//
//

//设备屏幕尺寸
#define kScreen_Height   ([UIScreen mainScreen].bounds.size.height)
#define kScreen_Width    ([UIScreen mainScreen].bounds.size.width)



#import <UIKit/UIKit.h>
#import "TaskstudyButton.h"



@interface BaseRootViewController : UIViewController
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
