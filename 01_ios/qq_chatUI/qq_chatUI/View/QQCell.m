//
//  QQCell.m
//  qq_chatUI
//
//  Created by Grammer on 2018/8/8.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "QQCell.h"
#import "QQMessage.h"
#import "QQCellFrame.h"

@interface QQCell ()


@end

@implementation QQCell

//-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    if(self)
//    {
//
//    }
//    return self;
//}

-(UIImageView*)headImageView
{
    if(_headImageView==nil)
    {
        _headImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_headImageView];
    }
    return _headImageView;
}

- (UILabel*)timeLabel
{
    if(_timeLabel==nil)
    {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.textAlignment = NSTextAlignmentCenter;
        _timeLabel.font = [UIFont systemFontOfSize:13.0];
        [self.contentView addSubview:_timeLabel];
    }
    return _timeLabel;
}

- (UIButton*)msgBtn
{
    if(_msgBtn==nil)
    {
        _msgBtn = [[UIButton alloc] init];
        _msgBtn.titleLabel.numberOfLines = 0;//!
        [_msgBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _msgBtn.backgroundColor = [UIColor grayColor];
        _msgBtn.contentEdgeInsets = UIEdgeInsetsMake(20, 20, 20, 20);
        _msgBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        
        [self.contentView addSubview:_msgBtn];
    }
    return _msgBtn;
}


- (void)setCellFrame:(QQCellFrame *)cellFrame
{
    _cellFrame = cellFrame;
    QQMessage *msg = self.cellFrame.qqmessage;
    self.timeLabel.frame = self.cellFrame.timeLabelF;
    self.headImageView.frame = self.cellFrame.headViewF;
    self.msgBtn.frame = self.cellFrame.textBtnF;
    
    self.timeLabel.text = msg.time;
//    self.timeLabel
    [self.msgBtn setTitle:msg.text forState:UIControlStateNormal];
    if(msg.type==eBySelf)
    {
        self.headImageView.image = [UIImage imageNamed:@"Gatsby"];
        [self.msgBtn setBackgroundImage:[UIImage imageNamed:@"chat_send_nor"] forState:UIControlStateNormal];
    }
    else
    {
        self.headImageView.image = [UIImage imageNamed:@"Jobs"];
        
        [self.msgBtn setBackgroundImage:[UIImage imageNamed:@"chat_recive_nor"] forState:UIControlStateNormal];
    }
    
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
