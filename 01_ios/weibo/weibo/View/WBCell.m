//
//  WBCell.m
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "WBCell.h"
#import "WBStatus.h"

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

- (void)setStatus:(WBStatus*)status
{
    _status = status;
    //! 设置数据源
    [self setDataSource];
    //！计算位置
    [self calcFrame];
}



- (void)setDataSource
{
    self.nameLabel.text = self.status.name;
    self.headView.image = [UIImage imageNamed:self.status.icon];
    self.textView.text = self.status.text;
    if(self.status.vip)
    {
        self.vipView.hidden = NO;
    }
    else
    {
        self.vipView.hidden = NO;
    }
    if(self.status.picture!=nil)
    {
        self.pictureView.hidden = NO;
        self.pictureView.image = [UIImage imageNamed:self.status.picture];
    }
}

- (void)calcFrame
{
    CGFloat padding = 10;
    CGFloat headviewWidth = 40;
    CGFloat headviewHeight = 40;
    self.headView.frame = CGRectMake(padding, padding, headviewWidth, headviewHeight);
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
