//
//  ViewController.m
//  tabelViewUI
//
//  Created by caidou on 2018/7/26.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

//! 数据列表
@property (nonatomic,strong) NSArray *dataList;
@end

@implementation ViewController


- (NSArray*)dataList
{
    if(_dataList==nil)
    {
        NSMutableArray *arraym = [NSMutableArray array];
        Student *stu1 = [[Student alloc] init];
        stu1.title = @"one ";
        stu1.desc = @"niubi";
        for(int i=0;i<10;++i)
        {
            [arraym addObject:[NSString stringWithFormat:@"%@-%d",stu1.title ,i]];
        }
        stu1.students = arraym;
        
        NSMutableArray *arraym1 = [NSMutableArray array];
        Student *stu2 = [[Student alloc] init];
        stu2.title = @"two ";
        stu2.desc = @"niubi2";
        for(int i=0;i<20;++i)
        {
            [arraym1 addObject:[NSString stringWithFormat:@"%@-%d",stu2.title ,i]];
        }
        stu2.students = arraym1;
        _dataList = @[stu1,stu2];
    }
    return _dataList;
}

#pragma mark -- datasouce function.

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataList.count;
}

//! 每个分组中的数据总数
//! 分组的编号
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    Student *s = self.dataList[section];
    return s.students.count;
}
// fixed font style. use custom view (UILabel) if you want something different
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    Student *s = self.dataList[section];
    return s.title;
//    or
//    return [self.dataList[section] title];
    
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    Student *s = self.dataList[section];
    return s.desc;
    //or
//    return [self.dataList[section] desc];
}



// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

//! row 行
//! section 分组
//! initwithstyle 实例化cell

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    Student *s1 = self.dataList[indexPath.section];
    
    cell.textLabel.text = s1.students[indexPath.row];
    return cell;
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
