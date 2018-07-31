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

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
