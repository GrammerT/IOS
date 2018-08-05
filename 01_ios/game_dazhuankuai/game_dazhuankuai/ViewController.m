//
//  ViewController.m
//  game_dazhuankuai
//
//  Created by Grammer on 2018/8/5.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *blocks;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)tapClick:(UITapGestureRecognizer *)sender {
    NSLog(@"%s",__func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
