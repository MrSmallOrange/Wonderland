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
#import "ZCImagePickerController.h"

@interface ZCStartGameController ()
@property(strong , nonatomic) ZCImagePickerController *imagePickerController;

@end

@implementation ZCStartGameController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupAllChildController];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    [self.view addGestureRecognizer:pan];
    
    [self.view addObserver:self forKeyPath:@"frame" options:NSKeyValueObservingOptionNew context:nil];

    self.imagePickerController.block = ^(CGRect frame){
        
    };

}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    if (self.view.frame.origin.x == -self.view.frame.size.width) {
        
        
        if ([ZCImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            
            self.imagePickerController = [[ZCImagePickerController alloc] init];
            self.imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
            [self presentViewController:self.imagePickerController animated:YES completion:nil];
            

            
            
        }else{
            NSLog(@"照相机不可用");
        }

    }
}


- (void)pan:(UIPanGestureRecognizer *)panGesture{
    
    CGPoint offset = [panGesture translationInView:self.view];
    NSLog(@"%f", offset.x);
    CGFloat offsetX = offset.x;
    
    
    CGRect frame = self.view.frame;
    
    frame.origin.x += offsetX;
    
    
    if (offsetX >= 0 && self.view.origin.x >= 0) {
        
    }else{
        self.view.frame = frame;
        [panGesture setTranslation:CGPointZero inView:self.view];
    }
    
    if (panGesture.state ==UIGestureRecognizerStateEnded) {
        
        CGFloat offsetX = self.view.origin.x;
        
        if ( offsetX <= 0 && -offsetX < self.view.size.width * 0.5) {
             [UIView animateWithDuration:0.5 animations:^{
                 CGRect frame = self.view.frame;
                 frame.origin.x = 0;
                 self.view.frame = frame;
             }];
        }else if( offsetX <= 0 && -offsetX >= self.view.size.width* 0.5){
            [UIView animateWithDuration:0.5 animations:^{
                CGRect frame = self.view.frame;
                frame.origin.x = -frame.size.width;
                self.view.frame = frame;
            }];
        }

        
    }

    
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

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:0.25 animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(-100, 0);
    }];
    [UIView animateWithDuration:0.5 animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(0, 0);
    }];
    
    [UIView animateWithDuration:0.25 animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(-25, 0);
    }];
    [UIView animateWithDuration:0.35 animations:^{
        self.view.transform = CGAffineTransformIdentity;
    }];
    

    
}

- (void)dealloc{
    [self.view removeObserver:self forKeyPath:@"frame"];
}



@end
