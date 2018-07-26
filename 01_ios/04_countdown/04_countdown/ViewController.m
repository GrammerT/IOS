//
//  ViewController.m
//  04_countdown
//
//  Created by caidou on 2018/7/24.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (strong,nonatomic) NSTimer *timer;

@end

@implementation ViewController


- (IBAction)startTimer {
    //! 倒计时，每秒更新
    //! 1.0
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer:) userInfo:@"hello timer..." repeats:YES];
    //! 2.0
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(updateTimer:) userInfo:@"timerWithTimeInterval" repeats:YES];
//    //!add timer to runloop
//    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
    //! 3.0
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void) updateTimer:(NSTimer*)timer
{
    int count = self.timerLabel.text.intValue;
    if(--count<0)
    {
        //! stop timer;
        [self stopTimer];
        UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"my title" message:@"Timer has stoped..." preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"%s",__func__);
            
        }];
        [controller addAction:ok];
        
        [self presentViewController:controller animated:YES completion:nil];
        return;
    }
    else
    {
        self.timerLabel.text = [NSString stringWithFormat:@"%d",count];
    }
    NSLog(@"%s",__func__);
    NSLog(@"%@",timer.userInfo);
}

- (IBAction)stopTimer {
    [self.timer invalidate];
//    self.timerLabel.text = [NSString stringWithFormat:@"%d",10];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
