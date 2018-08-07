//
//  ViewController.m
//  game_dazhuankuai
//
//  Created by Grammer on 2018/8/5.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *blocks;
@property (weak, nonatomic) IBOutlet UIImageView *ball;
@property (weak, nonatomic) IBOutlet UIImageView *paddle;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tabGesture;


//! ball's start point
@property (nonatomic,assign) CGPoint originBallCenter;

//! timer
@property (nonatomic,strong) CADisplayLink *gameTimer;
//! ball's speed
@property (nonatomic,assign) CGPoint speed;

@end

@implementation ViewController

- (void)onTimeout
{
    [self checkBlock];
    [self checkScree];
    [self updataBallLocation];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _originBallCenter = self.ball.center;
}

- (void)checkScree
{
    if(CGRectGetMinY(self.ball.frame)<=0)
    {
        self.speed = CGPointMake(0, 5);
    }
    if(CGRectGetMinX(self.ball.frame)<=CGRectGetMinX(self.view.frame))
    {
        
    }
    if(CGRectGetMaxX(self.ball.frame)>=CGRectGetMaxX(self.view.frame))
    {
        
    }
    if(CGRectGetMaxY(self.ball.frame)>=CGRectGetMinY(self.paddle.frame))
    {
        self.speed = CGPointMake(0, -5);
    }
    if(CGRectGetMaxY(self.ball.frame)>=CGRectGetMaxY(self.view.frame))
    {
//        lose
//        self.speed.y = 5;
        NSLog(@"you lose.");
    }
    
}

- (void)checkBlock
{
    for (UIImageView *view in self.blocks) {
        if(CGRectContainsPoint(view.frame, self.ball.center)&&(!view.isHidden))
        {
            view.hidden = YES;
            self.speed = CGPointMake(0, 5);
        }
    }
    
}

- (void)updataBallLocation
{
    NSLog(@"update ball location...");
    self.ball.center = CGPointMake(self.ball.center.x+self.speed.x, self.ball.center.y+self.speed.y);
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (IBAction)tapClick:(UITapGestureRecognizer *)sender {
    NSLog(@"%s",__func__);
    [self.tabGesture setEnabled:NO];
    self.speed = CGPointMake(0, -5);
    //! start timer.
    self.gameTimer = [CADisplayLink displayLinkWithTarget:self selector:@selector(onTimeout)];
    
    [self.gameTimer addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
