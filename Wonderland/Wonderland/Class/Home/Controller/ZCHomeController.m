//
//  ZCHomeController.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/23.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
////@"/Users/ZhangCheng/Desktop/zasd.plist"


#import "ZCHomeController.h"
#import "ZCHomeCell.h"
#import "ZCHomeHeaderView.h"
#import "ZCHomeContent.h"
#import "MJExtension.h"
#import "ZCLoadGameController.h"




@interface ZCHomeController () <ZCHomeCellDelegate>

@property (nonatomic, strong) NSMutableArray *homeContents;
@end

@implementation ZCHomeController
- (NSMutableArray *)homeContents
{
    if (_homeContents == nil) {
        _homeContents = [NSMutableArray array];
        _homeContents = [ZCHomeContent mj_objectArrayWithFilename:@"PropertyList.plist"];
    }
    
    for (ZCHomeContent *content in _homeContents) {
        content.gamesCount = content.gamesCount;
    }
    
    
    return _homeContents;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
 

    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"activity_blue_more"] style:UIBarButtonItemStyleDone target:self action:@selector(clickHomeMore)];
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([ZCHomeCell class]) bundle:nil] forCellReuseIdentifier:ZCHomeCellID];

}

- (void)clickHomeMore
{
    NSLog(@"%s", __func__);
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.homeContents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {


    
    ZCHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:ZCHomeCellID];
    cell.homeContent = self.homeContents[indexPath.row];
    cell.delegate = self;

    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{

    ZCHomeHeaderView *headerView = [ZCHomeHeaderView header];
    
    return headerView;

}

#pragma mark - Table View Delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 100;
}



#pragma mark - ZCHomeCell 代理
- (void)homeCellLoadGame:(ZCGameView *)gameView
{
    ZCLoadGameController *loadGame = [ZCLoadGameController loadGame];
    
    [self presentViewController:loadGame animated:YES completion:nil];
}




@end
