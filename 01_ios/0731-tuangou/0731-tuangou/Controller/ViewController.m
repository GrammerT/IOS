//
//  ViewController.m
//  0731-tuangou
//
//  Created by Grammer on 2018/7/31.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "ViewController.h"
#import "TuanGou.h"
#import "TgCell.h"
#import "FooterView.h"

@interface ViewController () <FootViewDelegate>

@property (nonatomic,strong) NSMutableArray *tgs;

@end

@implementation ViewController


- (NSArray *)tgs
{
    if(_tgs==nil)
    {
        _tgs = [TuanGou tgs];
        
    }
    return _tgs;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.rowHeight = 90;
    self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0);
    FooterView *view = [FooterView footerView];
    view.delegate = self;
    self.tableView.tableFooterView = view;

}

//! hide state bar
//- (BOOL)prefersStatusBarHidden
//{
//    return YES;
//}

#pragma mark - table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tgs.count;
}

- (void)tgFootViewDidDownloadButtonClick:(FooterView *)footerView
{
    //! load data;
    NSLog(@"%s",__func__);
    NSDictionary *dict = @{@"title":@"haha",@"icon":@"ad_00",@"price":@"100.3",@"buyCount":@"2000"};
    TuanGou *t_tg = [TuanGou tgWithDict:dict];
    [self.tgs addObject:t_tg];
    //! 刷新数据
//    [self.tableView reloadData];
    NSIndexPath *path = [NSIndexPath indexPathForRow:self.tgs.count-1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationLeft];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TgCell *cell = [TgCell cellWithTableVie:tableView];
    TuanGou *tg = self.tgs[indexPath.row];
    cell.tg = tg;
    return cell;
}




//- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
//{
//
//}

//- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
//{
//
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
