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
}

- (void)checkScree
{
    if(CGRectGetMinY(self.ball.frame)<=0)
    {
//        self.speed.y = 5.0;
    }
    if(CGRectGetMinX(self.ball.frame)<=CGRectGetMinX(self.view.frame))
    {
        
    }
    if(CGRectGetMaxX(self.ball.frame)>=CGRectGetMaxX(self.view.frame))
    {
        
    }
    if(CGRectGetMaxY(self.ball.frame)>=CGRectGetMaxY(self.view.frame))
    {
//        lose
//        self.speed.y = 5;
    }
    
}

- (void)checkBlock
{
    for (UIImageView *view in self.blocks) {
//        if()
    }
    
}

- (void)updataBallLocation
{
    
}

- (IBAction)tapClick:(UITapGestureRecognizer *)sender {
    NSLog(@"%s",__func__);
    //! start timer.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
