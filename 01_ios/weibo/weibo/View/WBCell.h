//
//  WBCell.h
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WBCellFrame;

@interface WBCell : UITableViewCell

@property (nonatomic,strong) WBCellFrame *statusFrame;

- (void)setStatusFrame:(WBCellFrame *)statusFrame;

@end
