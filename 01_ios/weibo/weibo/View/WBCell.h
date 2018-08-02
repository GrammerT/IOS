//
//  WBCell.h
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WBStatus;

@interface WBCell : UITableViewCell

@property (nonatomic,strong) WBStatus *status;

- (void)setStatus:(WBStatus*)status;

@end
