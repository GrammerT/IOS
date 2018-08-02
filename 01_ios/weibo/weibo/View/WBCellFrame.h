//
//  WBCellFrame.h
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class WBStatus;

@interface WBCellFrame : NSObject

@property (nonatomic,assign) CGRect nameF;
@property (nonatomic,assign) CGRect titleF;
@property (nonatomic,assign) CGRect iconF;
@property (nonatomic,assign) CGRect textF;
@property (nonatomic,assign) CGRect pictureF;
@property (nonatomic,assign) CGRect vipF;

@property (nonatomic,assign) CGFloat cellHeight;

@property (nonatomic,strong) WBStatus *status;


- (void)setStatus:(WBStatus *)status;


+ (NSArray*)statusFrames;


@end
