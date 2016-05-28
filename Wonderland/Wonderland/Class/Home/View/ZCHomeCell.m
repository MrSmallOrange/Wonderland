//
//  ZCHomeCell.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/25.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCHomeCell.h"
#import "ZCHomeContent.h"
#import "ZCHomeGame.h"
#import "ZCGameView.h"

@interface ZCHomeCell ()
@property (weak, nonatomic) IBOutlet UILabel *classifyTitle;
@property (weak, nonatomic) IBOutlet UIScrollView *bottomScrollerView;
@end
@implementation ZCHomeCell
- (void)awakeFromNib {
    self.bottomScrollerView.alwaysBounceHorizontal = YES;
    self.bottomScrollerView.showsHorizontalScrollIndicator = NO;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setHomeContent:(ZCHomeContent *)homeContent
{
    _homeContent = homeContent;
    
    self.classifyTitle.text = homeContent.classifyTitle;
    
    CGFloat gameWidth = [UIScreen mainScreen].bounds.size.width / 3;
    self.bottomScrollerView.contentSize = CGSizeMake( gameWidth * homeContent.gamesCount, self.frame.size.height);
    
    
    CGFloat gameX = 0;
    CGFloat gameY = 0;
    CGFloat gameHeight = self.frame.size.height;
    
    for (int i = 0; i < homeContent.gamesCount;  i++) {
        gameX = gameWidth * i;
        ZCHomeGame *game = homeContent.games[i];
        
        
        ZCGameView *gameView = [ZCGameView game];
        gameView.frame = CGRectMake(gameX, gameY, gameWidth, gameHeight);
        gameView.game = game;
        
        [self.bottomScrollerView addSubview:gameView];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
        [tap addTarget:self action:@selector(tapGame:)];
        [gameView addGestureRecognizer:tap];

    }

}

- (void)tapGame:(ZCGameView *)gameView
{
    if ([self.delegate respondsToSelector:@selector(homeCellLoadGame:)]) {
        [self.delegate homeCellLoadGame:gameView];
    }
}

@end
