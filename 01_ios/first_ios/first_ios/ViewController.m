//
//  ViewController.m
//  first_ios
//
//  Created by caidou on 2018/7/23.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    UITextField *textfild = [[UITextField alloc] initWithFrame:CGRectMake(20, 20, 280, 40)];
    
}

- (void) click:(UIButton*)btn
{
    NSLog(@"%s",__func__);
    NSLog(@"first click...");
    [btn removeTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - textfile delegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"%@ %@",NSStringFromRange(range),string);
    return range.location<9;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//! delegate need work? and how work?
//! protocol


@end
