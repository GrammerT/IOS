//
//  QQCellFrame.m
//  qq_chatUI
//
//  Created by Grammer on 2018/8/8.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "QQCellFrame.h"
#import "QQMessage.h"
#import "QQCell.h"
#import "NSString+tool.h"


#define kNameFont [UIFont systemFontOfSize:14]
#define kTextFont [UIFont systemFontOfSize:16]

#define bScreenWidth [[UIScreen mainScreen] bounds].size.width
#define bNormalHeight 44
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

+ (id)cellWithTableView:(UITableView*)tableView
{
    static NSString *ID = @"qqcell";
    
    QQCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(cell==nil)
    {
        cell = [[QQCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
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
    CGFloat timex_y=0;
    CGFloat timeWidth = bScreenWidth;
    CGFloat timeHeight = bNormalHeight;
    _timeLabelF = CGRectMake(timex_y, timex_y, timeWidth, timeHeight);
    
    CGFloat headviewX = 0;
    CGFloat headviewY = CGRectGetMaxY(_timeLabelF);
    CGFloat headviewW = 50;
    CGFloat headviewH = 50;


    
    

    if(self.qqmessage.type==eBySelf)
    {
        headviewX = bScreenWidth-headviewW-padding_x;
    }
    else
    {
        headviewX = padding_x;
    }
    _headViewF = CGRectMake(headviewX, headviewY, headviewW, headviewH);
    
    CGFloat textX = 0;
    CGFloat textY = headviewY;
    CGFloat textW = 50;
    CGFloat textH = 50;
    
    NSDictionary *nameDict = @{NSFontAttributeName:kTextFont};
    CGRect textRealSize = [self.qqmessage.text textRectWithSize:CGSizeMake(280, MAXFLOAT) attribute:nameDict];
    
    if(self.qqmessage.type==eBySelf)
    {
        textX = bScreenWidth-headviewW-padding_x-280;
    }
    else
    {
        textX = padding_x+headviewW;
    }
    
    _textBtnF = CGRectMake(textX, textY, textRealSize.size.width, textRealSize.size.height);
    
    _cellHeight = CGRectGetMaxY(_headViewF)>=CGRectGetMaxY(_textBtnF)?CGRectGetMaxY(_headViewF):CGRectGetMaxY(_textBtnF);
    
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
