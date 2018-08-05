//
//  WBCellFrame.m
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "WBCellFrame.h"
#import "WBStatus.h"
#import "WBCell.h"
#import "NSString+Tools.h"

#define kNameFont [UIFont systemFontOfSize:14]
#define kTextFont [UIFont systemFontOfSize:16]

@implementation WBCellFrame

- (void)setStatus:(WBStatus *)status
{
    _status = status;
    CGFloat padding = 10;
    CGFloat headviewWidth = 60;
    CGFloat headviewHeight = 60;
    self.iconF = CGRectMake(padding, padding, headviewWidth, headviewHeight);
    NSDictionary *nameDict = @{NSFontAttributeName:kNameFont};
    
    CGRect nameFrame = [_status.name textRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) attribute:nameDict];
    
    nameFrame.origin.x = CGRectGetMaxX(self.iconF)+padding;
    nameFrame.origin.y = padding + (self.iconF.size.height-nameFrame.size.height) *0.5;
    self.nameF = nameFrame;
    CGRect vipFrame;
    vipFrame.origin.x = CGRectGetMaxX(self.nameF)+padding;
    vipFrame.origin.y = self.nameF.origin.y;
    vipFrame.size.width = 14;
    vipFrame.size.height = 14;
    
    self.vipF = vipFrame;
    
    
    NSDictionary *textDict = @{NSFontAttributeName:kTextFont};
    CGRect textFrame = [_status.text textRectWithSize:CGSizeMake(375,MAXFLOAT) attribute:textDict];
    textFrame.origin.x = padding;
    textFrame.origin.y = CGRectGetMaxY(self.iconF)+padding;
    self.textF = textFrame;
    
    if(_status.picture.length>0)
    {
        CGRect pictRect ;
        pictRect.origin.x = padding;
        pictRect.origin.y = CGRectGetMaxY(self.textF)+padding;
        pictRect.size = CGSizeMake(150, 200);
        self.pictureF = pictRect;
        self.cellHeight = CGRectGetMaxY(self.pictureF)+padding;
    }
    else
    {
        self.cellHeight = CGRectGetMaxY(self.textF)+padding;
    }
}

+ (NSArray*)statusFrames
{
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil]];
    NSMutableArray *marray = [NSMutableArray array];
    for(NSDictionary *dict in array)
    {
        WBCellFrame *frame = [[WBCellFrame alloc] init];
        frame.status = [WBStatus statusWithDictionary:dict];
        [marray addObject:frame];
    }
    return marray;
}

@end
