//
//  ZCGameEntranceController.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/28.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCGameEntranceController.h"

@interface ZCGameEntranceController ()

@end

@implementation ZCGameEntranceController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"close_blue" highImage:@"close_white" target:self action:@selector(close)];
}



+ (instancetype)gameEntrance
{
    return [[ZCGameEntranceController alloc] initWithNibName:NSStringFromClass([ZCGameEntranceController class]) bundle:nil];
}

- (void)close
{

    [self dismissViewControllerAnimated:YES completion:^{
    }];
}
@end
