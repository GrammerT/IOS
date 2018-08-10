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

@property (nonatomic,assign) CGRect headViewF;
@property (nonatomic,assign) CGRect textBtnF;
@property (nonatomic,assign) CGRect timeLabelF;

@property (nonatomic,assign) CGFloat cellHeight;

@property (nonatomic,strong) QQMessage *qqmessage;

+ (NSArray*)qqCellFrames;


@end
