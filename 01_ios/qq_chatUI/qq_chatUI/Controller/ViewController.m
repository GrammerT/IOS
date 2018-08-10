//
//  ViewController.m
//  qq_chatUI
//
//  Created by Grammer on 2018/8/7.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "ViewController.h"
#import "QQMessage.h"
#import "QQCellFrame.h"
#import "QQCell.h"

static NSString *ID = @"Cell";

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSArray *cellFrames;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.tableView registerClass:[QQCell class] forCellReuseIdentifier:ID];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSArray*)cellFrames
{
    if(_cellFrames==nil)
    {
        _cellFrames = [QQCellFrame qqCellFrames];
    }
    return _cellFrames;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cellFrames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QQCell *cell = [QQCellFrame cellWithTableView:tableView];
    QQCellFrame *frame = self.cellFrames[indexPath.row];
    cell.cellFrame = frame;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.cellFrames[indexPath.row] cellHeight];
}


@end
