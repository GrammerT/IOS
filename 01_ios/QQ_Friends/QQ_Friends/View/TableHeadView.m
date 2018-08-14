//
//  TableHeadView.m
//  QQ_Friends
//
//  Created by Grammer on 2018/8/14.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "TableHeadView.h"

@implementation TableHeadView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.headBtn;
        self.onlineLabel;
    }
    return self;
}

- (UIButton*)headBtn
{
    if(_headBtn==nil)
    {
        _headBtn = [[UIButton alloc] init];
        [self addSubview:_headBtn];
    }
    return _headBtn;
}

- (UILabel*)onlineLabel
{
    if(_onlineLabel==nil)
    {
        _onlineLabel = [[UILabel alloc] init];
        [self addSubview:_onlineLabel];
    }
    return _onlineLabel;
}


@end
