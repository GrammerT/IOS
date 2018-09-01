//
//  Contact.m
//  privatecontact
//
//  Created by Grammer on 2018/9/1.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "Contact.h"

@implementation Contact


+ (instancetype)contactWithName:(NSString*)name phone:(NSString*)phone
{
    Contact *contact = [[Contact alloc] init];
    contact.name = name;
    contact.phone = phone;
    return contact;
}
@end
