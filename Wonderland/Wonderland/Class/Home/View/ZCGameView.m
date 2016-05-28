//
//  ZCGameView.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/28.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCGameView.h"
#import "ZCHomeGame.h"

@interface ZCGameView ()
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end

@implementation ZCGameView

//- (void)awakeFromNib
//{
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] init];
//    [tapGesture addTarget:self action:@selector(tapGame)];
//    [self addGestureRecognizer:tapGesture];
//}

+ (instancetype)game
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ZCGameView class]) owner:nil options:nil][0];
}

- (void)setGame:(ZCHomeGame *)game
{
    _game = game;
    
    self.pictureImageView.image = [UIImage imageNamed:game.picture];
    self.subTitleLabel.text = game.subTitle;
    self.timeLabel.text = game.time;
}
//
//#pragma mark - 点击某个游戏执行次方法
//- (void)tapGame
//{
//
//    if ([self.delegate respondsToSelector:@selector(gameLoadGame:)]) {
//        [self.delegate gameLoadGame:self];
//    }
//}
@end
