//
//  ViewController.m
//  single_tableview
//
//  Created by caidou on 2018/7/26.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"
#import "Hero.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *heros;

@end


@implementation ViewController

- (NSArray *)heros
{
    if(_heros==nil)
    {
        _heros = [Hero heros];
    }
    return _heros;
}

- (UITableView*)tableView
{
    if(_tableView==nil)
    {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        
        _tableView.dataSource = self;
        _tableView.delegate = self;
        
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSLog(@"%@",self.heros);
    
    UIView *head = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 130)];
    head.backgroundColor = [UIColor blueColor];
    self.tableView.tableHeaderView = head;
    
    
    UIView *foot = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 44)];
    foot.backgroundColor = [UIColor redColor];
    self.tableView.tableFooterView = foot;
    
    
    self.tableView.rowHeight = 140;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableView.separatorColor = [UIColor redColor];
    [self.view addSubview:self.tableView];
}


#pragma mark --tableview sourcedata
//! The number of rows in sections
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%s",__func__);
    return self.heros.count;
}

//! set every cell's detail
//! call function every time.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    /*
     UITableViewCellStyleDefault,    // Simple cell with text label and optional image view (behavior of UITableViewCell in iPhoneOS 2.x)
     UITableViewCellStyleValue1,        // Left aligned label on left and right aligned label on right with blue text (Used in Settings)
     UITableViewCellStyleValue2,        // Right aligned label on left with blue text and left aligned label on right (Used in Phone/Contacts)
     UITableViewCellStyleSubtitle    // Left aligned label on top and left aligned label on bottom with gray text (Used in iPod).
     */
    //    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    static NSString *cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if(cell==nil)
    {
        NSLog(@"%s",__func__);
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        // background color
//        cell.backgroundColor = [UIColor greenColor];
//        UIImage *image = [UIImage imageNamed:@"img_01"];
//        cell.backgroundView = [[UIImageView alloc] initWithImage:image];
//        cell.selectedBackgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img_02"]];
    }
    
    Hero *hero = self.heros[indexPath.row];
    cell.textLabel.text = hero.name;
    cell.detailTextLabel.text= hero.intro;
    cell.imageView.image = [UIImage imageNamed:hero.icon];
//    cell.accessoryType = UITableViewCellAccessoryNone;
//    cell.accessoryType = UITableViewCellAccessoryCheckmark;
//    cell.accessoryType = UITableViewCellAccessoryDetailButton;
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    //! can put every view's son UI in here.
    //!
//    UISwitch *switcher = [[UISwitch alloc] init];
//    [switcher addTarget:self action:@selector(tableviewSwither:) forControlEvents:UIControlEventValueChanged];
//    cell.accessoryView = switcher;
//
//
    
    return cell;
}

- (void)tableviewSwither:(UISwitch*)sender
{
    NSLog(@"%s",__func__);
    
}

#pragma mark -- tableview delegate function.

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"%s",__func__);
//    return (indexPath.row%2)?60:40;
//}

//! select one row.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s %@",__func__,indexPath);
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s",__func__);
}

//! cancel select one row.
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%s",__func__);
}



//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
