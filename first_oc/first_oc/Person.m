//
//  Person.m
//  first_oc
//
//  Created by caidou on 2018/7/16.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)setAge:(int)age
{
    self->_age=age;
}

- (int)age
{
    return self->_age;
}

+ (void)test
{
    NSLog(@"person test...");
}
@end
