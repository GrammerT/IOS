//
//  FooterView.h
//  0731-tuangou
//
//  Created by Grammer on 2018/8/1.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FooterView;

@protocol FootViewDelegate <NSObject>
- (void)tgFootViewDidDownloadButtonClick:(FooterView *)footerView;

@end

@interface FooterView : UIView

@property (nonatomic,weak) id<FootViewDelegate> delegate;

+ (instancetype)footerView;


@end
