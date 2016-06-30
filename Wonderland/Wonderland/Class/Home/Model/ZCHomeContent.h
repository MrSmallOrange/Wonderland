//
//  ZCHomeContent.h
//  Wonderland
//
//  Created by ZhangCheng on 16/5/25.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"
#import "ZCHomeGame.h"

@interface ZCHomeContent : NSObject
/** 分类标题*/
@property (nonatomic, copy) NSString *classifyTitle;

/** 某个分类的游戏个数*/
@property (nonatomic, assign) NSInteger gamesCount;
/** 游戏模型数组*/
@property (nonatomic, strong) NSArray *games;





@end
