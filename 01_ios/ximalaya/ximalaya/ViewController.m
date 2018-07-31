//
//  ViewController.m
//  ximalaya
//
//  Created by caidou on 2018/7/24.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIButton *lastButton;

@end

@implementation ViewController

- (void)setScrollView:(UIScrollView *)scrollView
{
    _scrollView = scrollView;
//    self.scrollView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
    CGFloat height = CGRectGetMaxY(self.lastButton.frame)+10;
    self.scrollView.contentSize = CGSizeMake(414, height);
    self.scrollView.contentOffset = CGPointMake(30, 30);
    NSLog(@"%s",__func__);
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%s",__func__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
