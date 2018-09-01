//
//  AddUserController.m
//  privatecontact
//
//  Created by Grammer on 2018/8/17.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "AddUserController.h"
#import "Contact.h"

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
    //！ 添加联系人
    [self.navigationController popViewControllerAnimated:YES];
    //! 2.把文本框的内容传递给上一个控制器
    Contact *c = [Contact contactWithName:self.nameTextField.text phone:self.phoneTextField.text];
    [self.delegate addUserController:self withContact:c];
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

- (NSString*)name
{
    return self.nameTextField.text;
}


- (NSString*)phone
{
    return self.phoneTextField.text;
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
