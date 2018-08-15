//
//  TableHeadView.h
//  QQ_Friends
//
//  Created by Grammer on 2018/8/14.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableHeadView : UITableViewHeaderFooterView

@property (nonatomic,strong) UIButton *headBtn;
@property (nonatomic,strong) UILabel *onlineLabel;

+(instancetype)headviewWith:(UITableView*)tableview;



@end
