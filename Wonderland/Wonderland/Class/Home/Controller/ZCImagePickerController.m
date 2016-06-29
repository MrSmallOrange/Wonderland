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

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)pan:(UIPanGestureRecognizer *)panGesture
{
    CGPoint offset = [panGesture locationInView:self.view];
    
    CGRect frame = self.view.frame;
    frame.origin.x += offset.x;
    
    
    if (self.view.frame.origin.x <= 0 && offset.x >= 0) {
        
    }else{
        [panGesture setTranslation:CGPointZero inView:self.view];
        self.view.frame = frame;
    }
    
    
    if (panGesture.state ==UIGestureRecognizerStateEnded) {
        
        CGFloat offsetX = self.view.origin.x;
        
        if ( offsetX >= 0 && offsetX < self.view.size.width * 0.5) {
            [UIView animateWithDuration:0.5 animations:^{
                CGRect frame = self.view.frame;
                frame.origin.x = 0;
                self.view.frame = frame;
            }];
        }else if( offsetX >= 0 && offsetX >= self.view.size.width* 0.5){
            [UIView animateWithDuration:0.5 animations:^{
                CGRect frame = self.view.frame;
                frame.origin.x = -frame.size.width;
                self.view.frame = frame;
            }];
        }
    }
    
    
    if (self.block) {
        self.block(self.view.frame);
    }
}

@end


