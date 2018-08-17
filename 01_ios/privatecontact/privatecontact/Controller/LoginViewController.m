//
//  LoginViewController.m
//  privatecontact
//
//  Created by Grammer on 2018/8/17.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "LoginViewController.h"
#import "MBProgressHUD+MJ.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *accountLabel;
@property (weak, nonatomic) IBOutlet UITextField *passwordLabel;
@property (weak, nonatomic) IBOutlet UISwitch *remeberPwdSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *autoLoginSwitch;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation LoginViewController

- (IBAction)login:(id)sender {
    if([self.accountLabel.text isEqualToString:@"grammer"]&&[self.passwordLabel.text isEqualToString:@"123"])
    {
        [MBProgressHUD showMessage:@"正在登录"];
        //! GCD
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            [self performSegueWithIdentifier:@"login2contact" sender:nil];
        });
    }
    else{
        [MBProgressHUD showError:@"账号或者密码错误"];
    }
}

- (IBAction)autoSwitchAction:(UISwitch*)sender {
    if(sender.isOn)
    {
        [self.remeberPwdSwitch setOn:YES animated:YES];
    }
}
- (IBAction)remeberSwitch:(UISwitch *)sender {
    if(!sender.isOn)
    {
        [self.autoLoginSwitch setOn:NO animated:YES];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.accountLabel addTarget:self action:@selector(textchanged) forControlEvents:UIControlEventEditingChanged];
    [self.passwordLabel addTarget:self action:@selector(textchanged) forControlEvents:UIControlEventEditingChanged];
    [self textchanged];
}

-(void)textchanged
{
//    NSLog(@"%s",__func__);
    NSLog(@"%@---%@",self.accountLabel.text,self.passwordLabel.text);
    self.loginBtn.enabled = self.accountLabel.text.length&&self.passwordLabel.text.length;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
