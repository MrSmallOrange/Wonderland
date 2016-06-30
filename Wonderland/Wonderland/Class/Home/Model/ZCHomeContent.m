//
//  ZCHomeContent.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/25.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCHomeContent.h"
#import "ZCHomeGame.h"



@implementation ZCHomeContent

+ (NSDictionary *)mj_objectClassInArray
{
    
    return @{
             @"games" : @"ZCHomeGame"
             };
}


- (NSInteger)gamesCount
{
    return self.games.count;
}


@end
