//
//  ZCHomeHeaderView.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/25.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCHomeHeaderView.h"

@interface ZCHomeHeaderView ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end

@implementation ZCHomeHeaderView
+ (instancetype)header
{
    ZCHomeHeaderView *header = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ZCHomeHeaderView class]) owner:nil options:nil][0];
    
    
    
    
    return header;
}
@end
