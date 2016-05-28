//
//  ZCLoadGameController.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/28.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCLoadGameController.h"
#import "ZCStartGameController.h"

@interface ZCLoadGameController ()

@property (weak, nonatomic) IBOutlet UIButton *closeButton;

@end

@implementation ZCLoadGameController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.closeButton setImage:[UIImage imageNamed:@"close_blue"] forState:UIControlStateNormal];
    [self.closeButton setImage:[UIImage imageNamed:@"close_white"] forState:UIControlStateHighlighted];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (instancetype)loadGame
{
    return [[ZCLoadGameController alloc] initWithNibName:NSStringFromClass([ZCLoadGameController class]) bundle:nil];
}

- (IBAction)close:(UIButton *)sender {
    [self dismissViewControllerAnimated:self completion:nil];
}


- (IBAction)startGame {
    
    ZCStartGameController *startGame = [[ZCStartGameController alloc] init];
    [self presentViewController:startGame animated:YES completion:nil];
    
}


@end
