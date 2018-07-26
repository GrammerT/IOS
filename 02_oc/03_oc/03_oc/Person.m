//
//  Person.m
//  03_oc
//
//  Created by caidou on 2018/7/17.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(int)age
{
    self->_age = age;
}

#pragma mark - set fangfa
- (int)age
{
    return self->_age;
}


@end
