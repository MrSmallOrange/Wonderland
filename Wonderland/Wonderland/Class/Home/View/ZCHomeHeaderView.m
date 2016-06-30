//
//  ZCHomeHeaderView.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/25.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCHomeHeaderView.h"

@interface ZCHomeHeaderView ()


@end

@implementation ZCHomeHeaderView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.frame];
        [self addSubview:scrollView];
        
        scrollView.contentSize = CGSizeMake(3 * self.frame.size.width, self.frame.size.height);
        
        CGFloat x = 0;
        CGFloat y = 0;
        CGFloat width = self.frame.size.width;
        CGFloat height = self.frame.size.height;
        NSString *imageName = nil;
        for (int i = 0; i < 0; i++) {
            
            imageName = [NSString stringWithFormat:@"%d", i];
            
            UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
            imageView.frame = CGRectMake(x, y, width, height);
            
            [scrollView addSubview:imageView];
            
        }
        
        
    }
    
    return self;
}
+ (instancetype)header
{
    ZCHomeHeaderView *header = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ZCHomeHeaderView class]) owner:nil options:nil][0];
    
    
    
    return header;
}
@end
