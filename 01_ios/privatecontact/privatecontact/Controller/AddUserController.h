//
//  AddUserController.h
//  privatecontact
//
//  Created by Grammer on 2018/8/17.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddUserController;
@class Contact;

@protocol AddUserDelegate <NSObject>

@required
- (void)addUserController:(AddUserController*)view withContact:(Contact *)contact; 
@end

@interface AddUserController : UIViewController

@property (nonatomic,strong) id<AddUserDelegate> delegate;


@end
