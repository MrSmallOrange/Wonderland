//
//  ZCHomeCell.h
//  Wonderland
//
//  Created by ZhangCheng on 16/5/25.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZCHomeContent.h"
#define ZCHomeCellID @"home"

@class ZCGameView;
@protocol ZCHomeCellDelegate <NSObject>

- (void)homeCellLoadGame:(ZCGameView *)gameView;

@end
@interface ZCHomeCell : UITableViewCell
/** 模型*/
@property (nonatomic, strong) ZCHomeContent *homeContent;
/**  */
@property (nonatomic, weak) id<ZCHomeCellDelegate>delegate;
@end
