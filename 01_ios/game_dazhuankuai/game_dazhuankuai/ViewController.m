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
@property (nonatomic,assign) CGFloat speed_x;

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
        self.speed = CGPointMake(-self.speed.x, 5);
    }
    if(CGRectGetMinX(self.ball.frame)<=CGRectGetMinX(self.view.frame))
    {
        self.speed = CGPointMake(-self.speed.x, self.speed.y);
    }
    if(CGRectGetMaxX(self.ball.frame)>=CGRectGetMaxX(self.view.frame))
    {
        self.speed = CGPointMake(-self.speed.x, self.speed.y);
    }
    if(CGRectIntersectsRect(self.paddle.frame, self.ball.frame))
    {
        self.speed = CGPointMake(-self.speed.x, -5);
        self.speed = CGPointMake(self.speed.x+self.speed_x/120.0,self.speed.y);
    }
    if(CGRectGetMinY(self.ball.frame)>=CGRectGetMaxY(self.view.frame))
    {
//        lose
//        self.speed.y = 5;
        NSLog(@"you lose.");
        [self.tabGesture setEnabled:YES];
        [self.gameTimer invalidate];
        self.ball.center = CGPointMake(self.paddle.center.x, self.paddle.center.y-self.paddle.frame.size.height/2-self.ball.frame.size.height/2);
    }
    
}
- (IBAction)paddleMove:(UIPanGestureRecognizer *)sender
{
    if(UIGestureRecognizerStateChanged == sender.state)
    {
        CGPoint point = [sender locationInView:self.view];
        self.paddle.center = CGPointMake(point.x,self.paddle.center.y);
        if(self.gameTimer)
        self.speed_x = [sender velocityInView:self.view].x;
    }
    else if (UIGestureRecognizerStateEnded==sender.state)
    {
        self.speed_x = 0;
    }

}

- (void)checkBlock
{
    for (UIImageView *view in self.blocks) {
//        if(CGRectContainsPoint(view.frame, self.ball.center)&&(!view.isHidden))
        if(CGRectIntersectsRect(view.frame, self.ball.frame)&&(!view.isHidden))
        {
            view.hidden = YES;
            self.speed = CGPointMake(self.speed.x, 5);
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
