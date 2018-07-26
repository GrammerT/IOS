//
//  ViewController.m
//  ImagCarousel
//
//  Created by caidou on 2018/7/25.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"

#define ImageCount 5

@interface ViewController () <UIScrollViewDelegate>

@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIPageControl *pageControl;
@property (nonatomic,strong) NSTimer *timer;
@end

@implementation ViewController

//! 分页控件
- (UIPageControl*)pageControl
{
    if(_pageControl==nil)
    {
        _pageControl = [[UIPageControl alloc] init];
        _pageControl.numberOfPages = ImageCount;
        CGSize size = [_pageControl sizeForNumberOfPages:ImageCount];
        
        _pageControl.pageIndicatorTintColor = [UIColor redColor];
        _pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
        
        _pageControl.bounds = CGRectMake(0, 0, size.width, size.height);
        _pageControl.center = CGPointMake(self.view.center.x, 190);
//        _pageControl.backgroundColor = [UIColor greenColor];
    }
    return _pageControl;
}

- (UIScrollView*)scrollView
{
    if(_scrollView==nil)
    {
        _scrollView = [[UIScrollView alloc] init];
        _scrollView.frame = CGRectMake(10, 20, 355, 130);
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(10, 20, 355, 180)];
        /*
        _scrollView.contentOffset = CGPointMake(10, 20);
        _scrollView.contentSize = CGSizeMake(355, 130);
        */
//        _scrollView
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.pagingEnabled = YES;
        _scrollView.bounces = NO;
        _scrollView.delegate = self;
        _scrollView.backgroundColor = [UIColor redColor];
        _scrollView.contentSize = CGSizeMake(ImageCount*self.scrollView.bounds.size.width, 0);
        
    }
    return _scrollView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //! add image.
    for(int i=0;i<ImageCount;++i)
    {
        UIImageView *imageview = [[UIImageView alloc] init];
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"img_%02d",i+1]];
        NSLog(@"%02d",i+1);
        imageview.image = image;
        imageview.frame = self.scrollView.bounds;
        [self.scrollView addSubview:imageview];
    }
    //! calculate image size
    [self.scrollView.subviews enumerateObjectsUsingBlock:^(__kindof UIImageView * _Nonnull imageView, NSUInteger idx, BOOL * _Nonnull stop) {
        //! adjust x.
        CGRect frame = imageView.frame;
        frame.origin.x = idx * frame.size.width;
        imageView.frame = frame;
    }];
    
    
    NSLog(@"%@",self.scrollView.subviews);
    
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.pageControl];
    [self.pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
    //! start timer;
    [self startTimer];
}

- (void)startTimer
{
    //    self.timer = [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    self.timer = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
//    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    

}


- (void)updateTimer
{
    NSLog(@"%s",__func__);
    self.pageControl.currentPage = (self.pageControl.currentPage+1)%ImageCount;
    [self pageChanged:self.pageControl];
    
}

- (void)pageChanged:(UIPageControl*)page
{
    NSLog(@"%s",__func__);
    NSLog(@"%ld",page.currentPage);
    CGPoint point = CGPointMake(page.currentPage*self.scrollView.bounds.size.width, 0);
//    self.scrollView.contentOffset = point;//! no animte
    //! have animated
    [self.scrollView setContentOffset:point animated:YES];
}

#pragma mark -scroll view function
//- (void)scrollViewDidScroll:(UIScrollView *)scrollView
//{
//    NSLog(@"%s",__func__);
//}

//- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
//{
//    NSLog(@"%s",__func__);
//}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
    CGPoint point = scrollView.contentOffset;
    NSLog(@"%@",NSStringFromCGPoint(scrollView.contentOffset));
    int page = scrollView.contentOffset.x/scrollView.bounds.size.width;
    NSLog(@"%d",page);
    self.pageControl.currentPage = page;
}

//! when use command run loop mode
//! use delegate stop timer
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"%s",__func__);
    //! 停止后就不能使用了，如果要使用必须重新实例化
    [self.timer invalidate];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"%s",__func__);
    [self startTimer];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
