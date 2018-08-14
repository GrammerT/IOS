//
//  ViewController.m
//  QQ_Friends
//
//  Created by Grammer on 2018/8/13.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "ViewController.h"
#import "QQFriendGroup.h"
#import "QQFriend.h"
#import "FriendCell.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *friendGroups;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [QQFriendGroup friendGroups];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (NSArray*)friendGroups
{
    if(_friendGroups==nil)
    {
        _friendGroups = [QQFriendGroup friendGroups];
    }
    return _friendGroups;
}



#pragma mark tableView datasource function
//! 初始化cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QQFriendGroup *group = self.friendGroups[indexPath.section];
    QQFriend *friend = group.friends[indexPath.row];
    FriendCell *cell = [[FriendCell alloc] initWithTableView:tableView];
    
    cell.textLabel.text = friend.name;
    cell.imageView.image = [UIImage imageNamed:friend.icon];
    return cell;
}

//! 设置group的个数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.friendGroups.count;
}
////! 设置行高
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return ;
//}

//! 设置每个section中的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    QQFriendGroup *group = self.friendGroups[section];
    return group.friends.count;
}

//! 返回head的view
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    return nil;
//}


@end
