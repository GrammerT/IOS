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

@property (nonatomic,strong) NSArray *wbStatusesFrames;

@end

@implementation ViewController

- (NSArray*)wbStatusesFrames
{
    if(_wbStatusesFrames==nil)
    {
        _wbStatusesFrames = [WBCellFrame statusFrames];
    }
    return _wbStatusesFrames;
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
    WBCellFrame *status = self.wbStatusesFrames[indexPath.row];
    cell.status = status.status;
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.wbStatusesFrames.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s",__func__);
    
    return [self.wbStatusesFrames[indexPath.row] cellHeight];
}


@end
