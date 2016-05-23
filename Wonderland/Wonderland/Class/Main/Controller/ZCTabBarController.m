//
//  ZCTabBarController.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/23.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCTabBarController.h"
#import "ZCNavigationController.h"
#import "ZCHomeController.h"
#import "ZCForumController.h"
#import "ZCDiscoverController.h"
#import "ZCNoticeController.h"
#import "ZCMineController.h"

@interface ZCTabBarController ()

@end

@implementation ZCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupAllController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupAllController
{
    ZCHomeController *home = [[ZCHomeController alloc] init];
    [self setupOneChildViewController:home imageName:@"11" selectedImageName:@"1" title:@"首页"];
    
    ZCForumController *forum = [[ZCForumController alloc] init];
    [self setupOneChildViewController:forum imageName:@"22" selectedImageName:@"2" title:@"论坛"];
    
    ZCDiscoverController *discover = [[ZCDiscoverController alloc] init];
    [self setupOneChildViewController:discover imageName:@"discover_logo" selectedImageName:@"discover_logo" title:@"发现"];
    
    ZCNoticeController *notice = [[ZCNoticeController alloc] init];
    [self setupOneChildViewController:notice imageName:@"33" selectedImageName:@"3" title:@"通知"];
    
    ZCMineController *mine = [[ZCMineController alloc] init];
    [self setupOneChildViewController:mine imageName:@"44" selectedImageName:@"4" title:@"我的"];

    
}

- (void)setupOneChildViewController:(UIViewController *)childViewController imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title
{
    childViewController.title = title;
    childViewController.tabBarItem.image = [UIImage imageNamed:imageName];
    childViewController.tabBarItem.selectedImage = [UIImage imageNamed:selectedImageName];
    
    ZCNavigationController *navigationController = [[ZCNavigationController alloc] initWithRootViewController:childViewController];
    
    [self addChildViewController:navigationController];
}



@end
