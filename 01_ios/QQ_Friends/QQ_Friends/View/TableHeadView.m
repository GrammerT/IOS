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
    
}

-(void)setGroup:(QQFriendGroup *)group
{
    _group=group;
    [self.headBtn setTitle:_group.name forState:UIControlStateNormal];
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
        _headBtn.backgroundColor = [UIColor blackColor];
        _headBtn.frame = self.bounds;
    }
    return _headBtn;
}

- (UILabel*)onlineLabel
{
    if(_onlineLabel==nil)
    {
        _onlineLabel = [[UILabel alloc] init];
        _onlineLabel.backgroundColor = [UIColor redColor];
        _onlineLabel.frame = CGRectMake(300, 0, 75, 44);
    }
    return _onlineLabel;
}



@end
