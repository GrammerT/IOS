//
//  Person.m
//  0719
//
//  Created by caidou on 2018/7/19.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (id)person
{
    return [[self alloc] init] ;
}

+ (id)personWithAge:(int)age
{
    Person *p = [[self alloc] init];
    p.age = age;
    return p;
}

- (void)dealloc
{
    NSLog(@"person release...");
    [super dealloc];
}

@end
