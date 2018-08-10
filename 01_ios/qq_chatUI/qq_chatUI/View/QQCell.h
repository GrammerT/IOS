//
//  QQCell.h
//  qq_chatUI
//
//  Created by Grammer on 2018/8/8.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QQCellFrame;

@interface QQCell : UITableViewCell

@property (nonatomic,strong) UIImageView *headImageView;
@property (nonatomic,strong) UILabel *timeLabel;
@property (nonatomic,strong) UIButton *msgBtn;

@property (nonatomic,strong) QQCellFrame *cellFrame;

@end
