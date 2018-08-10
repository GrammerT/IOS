//
//  QQCellFrame.m
//  qq_chatUI
//
//  Created by Grammer on 2018/8/8.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "QQCellFrame.h"
#import "QQMessage.h"
#import "NSString+tool.h"


#define kNameFont [UIFont systemFontOfSize:14]
#define kTextFont [UIFont systemFontOfSize:16]

@implementation QQCellFrame

+ (NSArray*)qqCellFrames
{
    NSMutableArray *marray = [NSMutableArray array];
    NSArray *msgArray = [QQMessage messages];
    for (QQMessage *msg in msgArray) {
        QQCellFrame *frame = [[QQCellFrame alloc] init];
        frame.qqmessage = msg;
        [marray addObject:frame];
    }
    return marray;
}

-(void)setQqmessage:(QQMessage *)qqmessage
{
    _qqmessage = qqmessage;
    [self calcSubViewLocation];
}


- (void)calcSubViewLocation
{
    CGFloat padding_x = 10;
    CGFloat padding_y = 10;
    CGFloat timeWidth = 355;
    CGFloat timeHeight = 20;
    self.timeLabelF = CGRectMake(padding_x, padding_y, timeWidth, timeHeight);
    CGFloat headViewWidth = 60;
    NSDictionary *nameDict = @{NSFontAttributeName:kTextFont};

    self.textBtnF = [self.qqmessage.text textRectWithSize:CGSizeMake(285, MAXFLOAT) attribute:nameDict];
    if(self.qqmessage.type==eBySelf)
    {
        self.headViewF = CGRectMake(CGRectGetMaxX(self.timeLabelF)-headViewWidth, CGRectGetMaxY(self.timeLabelF)+10, headViewWidth, headViewWidth);
        CGFloat x = self.headViewF.origin.x-10-self.textBtnF.size.width;
        CGFloat y = CGRectGetMaxY(self.timeLabelF)+10;
        self.textBtnF = CGRectMake(x, y , self.textBtnF.size.width, self.textBtnF.size.height);
    }
    else
    {
        self.headViewF = CGRectMake(CGRectGetMinX(self.timeLabelF), CGRectGetMaxY(self.timeLabelF)+10, headViewWidth, headViewWidth);
        CGFloat x = self.headViewF.origin.x+self.headViewF.size.width+10;
        CGFloat y = CGRectGetMaxY(self.timeLabelF)+10;
        self.textBtnF = CGRectMake(x, y , self.textBtnF.size.width, self.textBtnF.size.height);
    }
    self.cellHeight = padding_x+self.timeLabelF.size.height;
    self.cellHeight+= (self.textBtnF.size.height>=self.headViewF.size.height)?self.textBtnF.size.height:self.headViewF.size.height;
    self.cellHeight+= padding_x*3;
    
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
