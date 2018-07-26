//
//  ViewController.m
//  single_tableview
//
//  Created by caidou on 2018/7/26.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@end


@implementation ViewController

- (UITableView*)tableView
{
    if(_tableView==nil)
    {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        
        _tableView.dataSource = self;
        
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
