//
//  WBCell.m
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "WBCell.h"
#import "WBStatus.h"
#import "WBCellFrame.h"

#define kNameFont [UIFont systemFontOfSize:14]
#define kTextFont [UIFont systemFontOfSize:16]


@interface WBCell ()
@property (nonatomic,strong) UIImageView *headView;
@property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UIImageView *vipView;
@property (nonatomic,strong) UILabel *textView;
@property (nonatomic,strong) UIImageView *pictureView;


@end

@implementation WBCell

- (UIImageView*)headView
{
    if(_headView==nil)
    {
        _headView = [[UIImageView alloc] init];
        [self.contentView addSubview:_headView];
    }
    return _headView;
}

- (UILabel*)nameLabel
{
    if(_nameLabel==nil)
    {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.font = kNameFont;
        [self.contentView addSubview:_nameLabel];
    }
    return _nameLabel;
}

- (UIImageView*)vipView
{
    if(_vipView==nil)
    {
        _vipView = [[UIImageView alloc] init];
        _vipView.image = [UIImage imageNamed:@"vip"];
        _vipView.hidden = YES;
        [self.contentView addSubview:_vipView];
    }
    return _vipView;
}

- (UILabel*)textView
{
    if(_textView==nil)
    {
        _textView = [[UILabel alloc] init];
        _textView.font = kTextFont;
        _textView.numberOfLines = 0;
        [self.contentView addSubview:_textView];
    }
    return _textView;
}

- (UIImageView*)pictureView
{
    if(_pictureView==nil)
    {
        _pictureView = [[UIImageView alloc] init];
        _pictureView.hidden = YES;
        [self.contentView addSubview:_pictureView];
    }
    return _pictureView;
}

- (void)setStatusFrame:(WBCellFrame *)statusFrame;

{
    _statusFrame = statusFrame;
    //! 设置数据源
    [self setDataSource];
    //！计算位置
    [self calcFrame];
}



- (void)setDataSource
{
    WBStatus *status = self.statusFrame.status;
    self.nameLabel.text = status.name;
    self.headView.image = [UIImage imageNamed:status.icon];
    self.textView.text = status.text;
    if(status.vip)
    {
        self.vipView.hidden = NO;
    }
    else
    {
        self.vipView.hidden = NO;
    }
    if(status.picture.length>0)
    {
        self.pictureView.hidden = NO;
        self.pictureView.image = [UIImage imageNamed:status.picture];
    }
    else
    {
        self.pictureView.hidden= YES;
    }
}



- (void)calcFrame
{
    self.headView.frame = self.statusFrame.iconF;
    self.nameLabel.frame = self.statusFrame.nameF;

    self.vipView.frame = self.statusFrame.vipF;

    self.textView.frame = self.statusFrame.textF;
    if(!self.pictureView.hidden)
    {
        self.pictureView.frame = self.statusFrame.pictureF;
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
