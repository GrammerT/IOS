//
//  ViewController.m
//  QQ_Friends
//
//  Created by Grammer on 2018/8/13.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "ViewController.h"
#import "QQFriendGroup.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [QQFriendGroup friendGroups];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
