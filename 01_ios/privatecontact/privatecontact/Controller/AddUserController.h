//
//  AddUserController.h
//  privatecontact
//
//  Created by Grammer on 2018/8/17.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ContactViewController;

@protocol AddUserDelegate <NSObject>

@required
- (void)addUserWithName:(NSString*)name andPhone:(NSString*)phone;
@end

@interface AddUserController : UIViewController

@property (nonatomic,strong) id<AddUserDelegate> delegate;


@end
