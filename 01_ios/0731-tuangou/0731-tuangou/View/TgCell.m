//
//  TgCell.m
//  0731-tuangou
//
//  Created by Grammer on 2018/7/31.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "TgCell.h"
#include "TuanGou.h"

@interface TgCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *titleView;
@property (weak, nonatomic) IBOutlet UILabel *priceView;
@property (weak, nonatomic) IBOutlet UILabel *buyCountView;

@end



@implementation TgCell

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


- (void)setTg:(TuanGou*)ttg
{
    _tg=ttg;
    self.iconView.image = [UIImage imageNamed:_tg.icon];
    self.titleView.text = _tg.title;
    self.priceView.text = _tg.price;
    self.buyCountView.text = [NSString stringWithFormat:@"已有%@人购买",_tg.buyCount];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

//! cell被选中或者取消选中都会调用
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if(selected)
    {
        self.contentView.backgroundColor = [UIColor redColor];
    }
    else
    {
        self.contentView.backgroundColor = [UIColor greenColor];
    }
}

@end
