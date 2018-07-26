//
//  ViewController.m
//  03_scrollView
//
//  Created by caidou on 2018/7/23.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic ,strong) UIImage *image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //! tell scrollview content's size.
//    self.scrollView.contentSize = CGSizeMake(892, 632);
    
    self.image = [UIImage imageNamed:@"minion"];
    
    self.scrollView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);

    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.showsVerticalScrollIndicator = NO;
    self.scrollView.bounces= NO;
    self.scrollView.contentOffset = CGPointMake(100, 100);
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)btnClick
{
    //! move big image size
    CGPoint point = self.scrollView.contentOffset;
    point.x+=20;
    point.y+=20;
    self.scrollView.contentOffset = point;
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    self.imageView.image = _image;
    
    [self.imageView sizeToFit];
    
    self.scrollView.contentSize = _image.size;
}

- (UIImageView*) imageView
{
    if(_imageView==nil)
    {
        _imageView = [[UIImageView alloc] init];
        [self.scrollView addSubview:_imageView];
    }
    return _imageView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
