//
//  ZCImagePickerController.h
//  Wonderland
//
//  Created by ZhangCheng on 16/6/29.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ZCImagePickerControllerBlock)(CGRect frame);

@interface ZCImagePickerController : UIImagePickerController

@property(nonatomic,strong)ZCImagePickerControllerBlock block;
@end
