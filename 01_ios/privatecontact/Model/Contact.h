//
//  Contact.h
//  privatecontact
//
//  Created by Grammer on 2018/9/1.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *phone;

+ (instancetype)contactWithName:(NSString*)name phone:(NSString*)phone;
@end
