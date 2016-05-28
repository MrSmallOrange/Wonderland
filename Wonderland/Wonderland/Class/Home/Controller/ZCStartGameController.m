//
//  ZCStartGameController.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/28.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCStartGameController.h"
#import "ZCNavigationController.h"
#import "ZCGameEntranceController.h"
#import "ZCGameDescriptionController.h"
#import "ZCMineDataController.h"
#import "ZCGameMoreController.h"

@interface ZCStartGameController ()

@end

@implementation ZCStartGameController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupAllChildController];


}

- (void)setupAllChildController
{
    ZCGameEntranceController *entrance = [ZCGameEntranceController gameEntrance];
    [self setupOneChildViewController:entrance imageName:@"tab10" selectedImageName:@"tab11"];
    
    ZCGameDescriptionController *description = [ZCGameDescriptionController gameDescription];
    [self setupOneChildViewController:description imageName:@"tab20" selectedImageName:@"tab21"];
    
    ZCMineDataController *data = [ZCMineDataController mineData];
    [self setupOneChildViewController:data imageName:@"tab40" selectedImageName:@"tab41"];
    
    ZCGameMoreController *more = [ZCGameMoreController gameMore];
    [self setupOneChildViewController:more imageName:@"tab50" selectedImageName:@"tab51" ];
}



- (void)setupOneChildViewController:(UIViewController *)childViewController imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    childViewController.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childViewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ZCNavigationController *navigationController = [[ZCNavigationController alloc] initWithRootViewController:childViewController];
    
    [self addChildViewController:navigationController];
}




@end
