//
//  TgCell.h
//  0731-tuangou
//
//  Created by Grammer on 2018/7/31.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TuanGou;
@interface TgCell : UITableViewCell

@property (nonatomic,strong) TuanGou *tg;


+ (instancetype)cellWithTableVie:(UITableView*)tableView;
@end
