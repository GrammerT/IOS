//
//  TableHeadView.m
//  QQ_Friends
//
//  Created by Grammer on 2018/8/14.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "TableHeadView.h"
#import "QQFriendGroup.h"

@implementation TableHeadView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(instancetype)headviewWith:(UITableView*)tableview
{
    static NSString *ID = @"headview";
    TableHeadView *head = [tableview dequeueReusableHeaderFooterViewWithIdentifier:ID];
    if(head==nil)
    {
        head = [[TableHeadView alloc] initWithReuseIdentifier:ID];
    }
    return head;
}

//! when parent widget changed,subview ui
- (void)layoutSubviews
{
    self.headBtn.frame = self.bounds;
    float onlineW = 75;
    float onlineH = self.bounds.size.height;
    float onlineX =self.bounds.size.width-onlineW-10;
    float onlineY = 0;
    _onlineLabel.frame = CGRectMake(onlineX, onlineY, onlineW, onlineH);
}

-(void)setGroup:(QQFriendGroup *)group
{
    _group=group;
    [self.headBtn setTitle:_group.name forState:UIControlStateNormal];
    NSLog([NSString stringWithFormat:@"%d/%d",_group.online,_group.friends.count]);
    [self.onlineLabel setText:[NSString stringWithFormat:@"%d/%d",_group.online,_group.friends.count]];
}


- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithReuseIdentifier:reuseIdentifier];
    
    if(self)
    {
        [self addSubview:self.headBtn];
        [self addSubview:self.onlineLabel];
    }
    
    return self;
}

- (UIButton*)headBtn
{
    if(_headBtn==nil)
    {
        _headBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        _headBtn.backgroundColor = [UIColor blackColor];
        _headBtn.frame = self.bounds;
        [_headBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        _headBtn.titleLabel.ins
        _headBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        _headBtn.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        _headBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
        [_headBtn addTarget:self action:@selector(clickHead:) forControlEvents:UIControlEventTouchUpInside];
//        _headBtn.titleLabel
        [_headBtn setImage:[UIImage imageNamed:@"buddy_header_arrow"] forState:UIControlStateNormal];
    }
    return _headBtn;
}

- (UILabel*)onlineLabel
{
    if(_onlineLabel==nil)
    {
        _onlineLabel = [[UILabel alloc] init];
        _onlineLabel.textAlignment = NSTextAlignmentRight;
        [_onlineLabel setTextColor:[UIColor blackColor]];
//        _onlineLabel.backgroundColor = [UIColor redColor];

    }
    return _onlineLabel;
}


- (void)clickHead:(UIButton*)btn
{
    NSLog(@"%s",__func__);
}


@end
