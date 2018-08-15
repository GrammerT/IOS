//
//  TableHeadView.h
//  QQ_Friends
//
//  Created by Grammer on 2018/8/14.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QQFriendGroup;

@class TableHeadView;

typedef void (^tableheadViewblock)(id);

@protocol TableHeadViewDelegate <NSObject>
- (void)tableHeadview:(TableHeadView*)headview;
@end

@interface TableHeadView : UITableViewHeaderFooterView

@property (nonatomic,strong) UIButton *headBtn;
@property (nonatomic,strong) UILabel *onlineLabel;
@property (nonatomic,strong) QQFriendGroup *group;

@property (nonatomic,strong) id<TableHeadViewDelegate> delegate;

@property (nonatomic,copy) tableheadViewblock block;


+(instancetype)headviewWith:(UITableView*)tableview;



@end
