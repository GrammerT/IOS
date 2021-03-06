//
//  ViewController.m
//  qq_chatUI
//
//  Created by Grammer on 2018/8/7.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "ViewController.h"
#import "QQMessage.h"
#import "QQCellFrame.h"
#import "QQCell.h"

static NSString *ID = @"Cell";

@interface ViewController () <UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>

@property (nonatomic,strong) NSMutableArray *cellFrames;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *textFiled;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.tableView registerClass:[QQCell class] forCellReuseIdentifier:ID];
    //! CELL can't be selected.
    self.tableView.allowsSelection = NO;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //! set main window attribute.
    //! key window.
    [UIApplication sharedApplication].keyWindow;
    //! all windows.
    [UIApplication sharedApplication].windows;
    
    //! end set
    self.tableView.backgroundColor = [UIColor colorWithRed:225/255.0 green:225/255.0 blue:225/255.0 alpha:1.0];
//    self.tableView.backgroundColor = [UIColor redColor];
    
    self.view.window.backgroundColor = self.tableView.backgroundColor;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardDidChangedFrame:) name:UIKeyboardWillChangeFrameNotification object:nil];
    self.textFiled.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 15, 0)];
    self.textFiled.leftViewMode = UITextFieldViewModeAlways;
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyBoardDidChangedFrame1:) name:UIKeyboardDidHideNotification object:nil];
    
}

//! noti.userInfo
//UIKeyboardAnimationCurveUserInfoKey = 7;
//UIKeyboardAnimationDurationUserInfoKey = "0.25";
//UIKeyboardBoundsUserInfoKey = "NSRect: {{0, 0}, {375, 258}}";
//UIKeyboardCenterBeginUserInfoKey = "NSPoint: {187.5, 538}";
//UIKeyboardCenterEndUserInfoKey = "NSPoint: {187.5, 796}";
//UIKeyboardFrameBeginUserInfoKey = "NSRect: {{0, 409}, {375, 258}}";
//UIKeyboardFrameEndUserInfoKey = "NSRect: {{0, 667}, {375, 258}}";
//UIKeyboardIsLocalUserInfoKey = 1;

-(void)keyBoardDidChangedFrame:(NSNotification*)noti
{
    NSLog(@"-----%@",noti.userInfo);
    self.view.window.backgroundColor = self.tableView.backgroundColor;
    
    CGRect rect = [noti.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    //! show keyboard --> view up 258
    //! hide keyboard ---> view down 258
    
    CGFloat keyboardY = rect.origin.y;
    CGFloat screeH = [[UIScreen mainScreen] bounds].size.height;
    
    CGFloat animationTime = [noti.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    
    [UIView animateWithDuration:animationTime animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(0, keyboardY-screeH);
    }];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(textField.text);
    
    QQMessage *message = [[QQMessage alloc] init];
    message.time = @"16:18";
    message.text = textField.text;
    message.type = eBySelf;
    message.hideTime = NO;
    QQCellFrame *frame = [[QQCellFrame alloc] init];
    frame.qqmessage = message;
    //! add frame
    [self.cellFrames addObject:frame];

    //! update tableview
    [self.tableView reloadData];
    //! move tableview
    NSIndexPath *path = [NSIndexPath indexPathForRow:self.cellFrames.count-1 inSection:0];
    [self.tableView scrollToRowAtIndexPath:path atScrollPosition:UITableViewScrollPositionBottom animated:YES];

    textField.text = nil;
    return YES;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSArray*)cellFrames
{
    if(_cellFrames==nil)
    {
        _cellFrames = [QQCellFrame qqCellFrames];
    }
    return _cellFrames;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cellFrames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QQCell *cell = [QQCellFrame cellWithTableView:tableView];
    
    QQCellFrame *frame = self.cellFrames[indexPath.row];
    cell.cellFrame = frame;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.cellFrames[indexPath.row] cellHeight];
}


@end
