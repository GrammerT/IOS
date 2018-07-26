//
//  ViewController.m
//  02_loginView
//
//  Created by caidou on 2018/7/23.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textfileUserName;
@property (weak, nonatomic) IBOutlet UITextField *textfilePassword;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textfileUserName becomeFirstResponder];
    // Do any additional setup after loading the view, typically from a nib
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginClick {
    NSLog(@"%@ %@",self.textfileUserName.text,self.textfilePassword.text);
}

#pragma mark textDelegate

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    NSLog(@"%@",textField.text);
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"%@----",textField.text);
    
    if(textField==self.textfileUserName)
    {
        [self.textfilePassword becomeFirstResponder];
    }
    else
    {
        [self loginClick];
        
        //! close keyboard;
//        [self.view endEditing:YES];
        [textField endEditing:YES];
        
    }
    return YES;
}

@end
