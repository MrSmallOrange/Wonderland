//
//  ZCImagePickerController.m
//  Wonderland
//
//  Created by ZhangCheng on 16/6/29.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCImagePickerController.h"

@interface ZCImagePickerController ()

@end

@implementation ZCImagePickerController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    [self.view addGestureRecognizer:pan];
    
    UIImageView *animationImage = [[UIImageView alloc] init];
    animationImage.frame = CGRectMake(90, 500, 300, 200);
    [self.view addSubview:animationImage];
    
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"svg"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    
    UIImage *image = [UIImage imageWithData:data];
    animationImage.image = image;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)pan:(UIPanGestureRecognizer *)panGesture
{

    
    if (self.block) {
        self.block(self.view.frame);
    }
}

@end


