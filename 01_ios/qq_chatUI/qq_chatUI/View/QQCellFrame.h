//
//  QQCellFrame.h
//  qq_chatUI
//
//  Created by Grammer on 2018/8/8.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QQMessage;
@interface QQCellFrame : UITableViewCell

@property (nonatomic,assign,readonly) CGRect headViewF;
@property (nonatomic,assign,readonly) CGRect textBtnF;
@property (nonatomic,assign,readonly) CGRect timeLabelF;

@property (nonatomic,assign,readonly) CGFloat cellHeight;

@property (nonatomic,strong) QQMessage *qqmessage;

+ (NSArray*)qqCellFrames;

+ (id)cellWithTableView:(UITableView*)tableView;

@end
