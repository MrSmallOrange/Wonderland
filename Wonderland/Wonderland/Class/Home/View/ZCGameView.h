//
//  ZCGameView.h
//  Wonderland
//
//  Created by ZhangCheng on 16/5/28.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZCHomeGame;
@class ZCGameView;


@interface ZCGameView : UIView
/** 游戏*/
@property (nonatomic, strong) ZCHomeGame *game;

+ (instancetype)game;
@end
