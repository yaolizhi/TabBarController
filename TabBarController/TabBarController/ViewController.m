//
//  ViewController.m
//  TabBarController
//
//  Created by yaolizhi on 15/8/17.
//  Copyright (c) 2015年 yaolizhi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) SvTabBarFirstViewController *viewController1, *viewController2, *viewController3 ,*viewController4;


@end

@implementation ViewController
@synthesize viewController1,viewController2,viewController3,viewController4;
@synthesize TabBarHidden;

-(instancetype)init
{
    self = [super init];
    if (self)
    {
        viewController1 = [[SvTabBarFirstViewController alloc] initTitle:@"课程"];
        
        UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:@"课程" image:[UIImage imageNamed:@"delhistory"] selectedImage:[UIImage imageNamed:@"ControllerLink"]];
        viewController1.tabBarItem = item1;
        UINavigationController *view1 = [[UINavigationController alloc]initWithRootViewController:viewController1];
        
        
        
        viewController2 = [[SvTabBarFirstViewController alloc] initTitle:@"题库"];
        viewController2.title = @"Second";
        UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"题库" image:[UIImage imageNamed:@"delhistory"] selectedImage:[UIImage imageNamed:@"ControllerLink"]];
        viewController2.tabBarItem = item2;
        UINavigationController *view2 = [[UINavigationController alloc]initWithRootViewController:viewController2];
    
        
        viewController3 = [[SvTabBarFirstViewController alloc] initTitle:@"资讯"];
        viewController3.title = @"Third";
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"资讯" image:[UIImage imageNamed:@"delhistory"] selectedImage:[UIImage imageNamed:@"ControllerLink"]];
        viewController3.tabBarItem = item;
        UINavigationController *view3 = [[UINavigationController alloc]initWithRootViewController:viewController3];
        
        
        viewController4 = [[SvTabBarFirstViewController alloc] initTitle:@"我"];
        viewController4.title = @"Fourth";
        UITabBarItem *item4 = [[UITabBarItem alloc] initWithTitle:@"我" image:[UIImage imageNamed:@"delhistory"] selectedImage:[UIImage imageNamed:@"ControllerLink"]];
        viewController4.tabBarItem = item4;
        UINavigationController *view4 = [[UINavigationController alloc]initWithRootViewController:viewController4];
        

        [self.view setBackgroundColor:[UIColor whiteColor]];
        self.delegate = self;
        self.viewControllers = [NSArray arrayWithObjects:view1, view2, view3,
                                            view4, nil];
        
        [self setHidesBottomBarWhenPushed:YES];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITabBarcontrollerDelegate
- (void)tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray *)viewControllers
{
    NSLog(@"willBeginCustomizingViewControllers: %@", viewControllers);
}

- (void)tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"viewcontrollers: %@, ischanged: %d", viewControllers, changed);
}


- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
    NSLog(@"didEndCustomizingViewController!");
    NSLog(@"didEndCustomizingViewController: %@, ischanged: %d", viewControllers, changed);
}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    if ([tabBarController.viewControllers indexOfObject:viewController] != 2)
    {
        return YES;
    }
    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSLog(@"didSelectViewController!");
}




@end
