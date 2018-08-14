//
//  FriendCell.m
//  QQ_Friends
//
//  Created by Grammer on 2018/8/14.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "FriendCell.h"

@interface FriendCell ()



@end

@implementation FriendCell


- (instancetype)initWithTableView:(UITableView*)tableView
{
    static NSString *ID = @"friendCell";
    self = [tableView dequeueReusableCellWithIdentifier:ID];
    if(self==nil)
    {
        self = [[FriendCell alloc] init];
    }
    return self;
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
