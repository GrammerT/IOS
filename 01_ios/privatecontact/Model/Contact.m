//
//  Contact.m
//  privatecontact
//
//  Created by Grammer on 2018/9/1.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "Contact.h"

#define CONTACT_NAME @"name"
#define CONTACT_PHONE @"phone"

@interface Contact() <NSCoding>

@end

@implementation Contact

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:CONTACT_NAME];
    [aCoder encodeObject:self.phone forKey:CONTACT_PHONE];
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        self.name = [coder decodeObjectForKey:CONTACT_NAME];
        self.phone = [coder decodeObjectForKey:CONTACT_PHONE];
        
    }
    return self;
}

+ (instancetype)contactWithName:(NSString*)name phone:(NSString*)phone
{
    Contact *contact = [[Contact alloc] init];
    contact.name = name;
    contact.phone = phone;
    return contact;
}
@end
