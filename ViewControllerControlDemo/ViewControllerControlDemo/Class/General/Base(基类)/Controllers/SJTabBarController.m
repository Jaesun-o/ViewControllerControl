//
//  SJTabBarController.m
//  ViewControllerControlDemo
//
//  Created by Jaesun on 2017/9/23.
//  Copyright © 2017年 S.J. All rights reserved.
//

#import "SJTabBarController.h"
#import "SJNavigationController.h"
#import "SJNavigationController.h"
#import "ClientController.h"
#import "HomeController.h"
#import "LoginController.h"
#import "UserController.h"
#import "SJTabBar.h"

@interface SJTabBarController ()<UITabBarControllerDelegate>

@end

@implementation SJTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    HomeController *homeVC = [[HomeController alloc] init];
    homeVC.title = @"首页";
    [homeVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_home_selected"]];
    [homeVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_home"]];
    SJNavigationController *homeNav = [[SJNavigationController alloc]
                                       initWithRootViewController:homeVC];
    [self addChildViewController:homeNav];
    ClientController *clientVC = [[ClientController alloc] init];
    clientVC.title = @"客服";
    clientVC.tabBarItem.imageInsets = UIEdgeInsetsMake(- 10, 0, 10, 0);
    [clientVC.tabBarItem setImage:[[UIImage imageNamed:@"zxwz"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [clientVC.tabBarItem setSelectedImage:[[UIImage imageNamed:@"zaixian"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    SJNavigationController *clientNav = [[SJNavigationController alloc]
                                       initWithRootViewController:clientVC];
    [self addChildViewController:clientNav];
    UserController *userVC = [[UserController alloc] init];
    [userVC.tabBarItem setImage:[UIImage imageNamed:@"tabbar_profile"]];
    [userVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"tabbar_profile_selected"]];
    SJNavigationController *userNav = [[SJNavigationController alloc]
                                       initWithRootViewController:userVC];
    userVC.title = @"用户";
    [self addChildViewController:userNav];
    
    // 2.更换系统自带的tabbar
    SJTabBar *tabBar = [[SJTabBar alloc] init];
    [self setValue:tabBar forKeyPath:@"tabBar"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
