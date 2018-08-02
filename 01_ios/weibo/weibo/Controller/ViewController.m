//
//  ViewController.m
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "ViewController.h"
#import "WBStatus.h"
#import "WBCell.h"
#import "WBCellFrame.h"

@interface ViewController ()

@property (nonatomic,strong) NSMutableArray *wbStatuses;

@end

@implementation ViewController

- (NSMutableArray*)wbStatuses
{
    if(_wbStatuses==nil)
    {
        _wbStatuses = [WBStatus statuses];
    }
    return _wbStatuses;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.view.backgroundColor = [UIColor redColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s",__func__);
    static NSString *ID = @"Cell";
    WBCell *cell = [self.tableView dequeueReusableCellWithIdentifier:ID];
    if(cell==nil)
    {
        cell = [[WBCell alloc] init];
    }
    WBStatus *status = self.wbStatuses[indexPath.row];
    [cell setStatus:status];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.wbStatuses.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s",__func__);
    WBCellFrame *frame = [[WBCellFrame alloc] init];
    frame.status = self.wbStatuses[indexPath.row];
    NSLog(@"%f",frame.cellHeight);
    return frame.cellHeight;
}


@end
