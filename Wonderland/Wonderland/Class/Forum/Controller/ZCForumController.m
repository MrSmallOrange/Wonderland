//
//  ZCForumController.m
//  Wonderland
//
//  Created by ZhangCheng on 16/5/23.
//  Copyright © 2016年 ZhangCheng. All rights reserved.
//

#import "ZCForumController.h"

@interface ZCForumController ()

@end

@implementation ZCForumController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = @"我你的懒惰";
    cell.detailTextLabel.text = @"阿萨德发收到发送到发送到发送地方";
    cell.imageView.image = [UIImage imageNamed:@"avatar_vgirl"];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
}



@end
