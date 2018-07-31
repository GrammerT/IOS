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

@interface ViewController ()

@property (nonatomic,strong) NSArray *tgs;

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

+ (instancetype)cellWithTableVie:(UITableView*)tableView
{
    static NSString *ID = @"cell";
    TgCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell==nil)
    {
        //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
        //        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        //! load ui from xib file
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TgCell" owner:nil options:nil] lastObject];
    }
    return cell;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    TgCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell==nil)
    {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        //! load ui from xib file
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TgCell" owner:nil options:nil] lastObject];
    }
    TuanGou *tg = self.tgs[indexPath.row];
//    cell.textLabel.text = tg.title;
//    cell.imageView.image = [UIImage imageNamed:tg.icon];
//    cell.detailTextLabel.text = [NSString stringWithFormat:@"¥%@       已有%@人购买",tg.price,tg.buyCount];
//
    cell.tg = tg;
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
