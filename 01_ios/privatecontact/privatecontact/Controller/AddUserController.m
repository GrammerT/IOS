//
//  AddUserController.m
//  privatecontact
//
//  Created by Grammer on 2018/8/17.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "AddUserController.h"

@interface AddUserController ()
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *addBtn;

@end

@implementation AddUserController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.phoneTextField addTarget:self action:@selector(textChanged) forControlEvents:UIControlEventEditingChanged];
    [self.nameTextField addTarget:self action:@selector(textChanged) forControlEvents:UIControlEventEditingChanged];
}
- (IBAction)addAction:(UIButton*)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)textChanged
{
    NSLog(@"%s",__func__);
    
    self.addBtn.enabled=self.nameTextField.text.length&&self.phoneTextField.text.length;
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
