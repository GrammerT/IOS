//
//  FooterView.m
//  0731-tuangou
//
//  Created by Grammer on 2018/8/1.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "FooterView.h"

@interface FooterView ()
@property (weak, nonatomic) IBOutlet UIButton *btnClick;
@property (weak, nonatomic) IBOutlet UIView *loadView;

@end


@implementation FooterView
- (IBAction)loadClick {
    NSLog(@"%s",__func__);
    self.loadView.hidden = NO;
    self.btnClick.hidden = YES;
    
    //! timeout function
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [self.delegate tgFootViewDidDownloadButtonClick:self];
        
        self.loadView.hidden = YES;
        self.btnClick.hidden = NO;
    });
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)footerView
{
    FooterView *view = [[[NSBundle mainBundle] loadNibNamed:@"FooterView" owner:nil options:nil] lastObject];
    return view;
}
@end
