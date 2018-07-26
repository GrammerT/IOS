//
//  Person.m
//  04_dianyufa
//
//  Created by caidou on 2018/7/17.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name ;
@synthesize age;

- (id)init
{
    if(self = [super init])
    {
        self.name = @"tzq";
        self.age = 10;
    }
    return self;
}


- (id)initWithName:(NSString *)name
{
    if(self=[super init])
    {
        self.name = name;
        self.age = 45;
    }
    return self;
}


- (id)initWithAge:(int)age andName:(NSString*)name
{
    if(self=[super init])
    {
        self.name = name;
        self.age = age;
    }
    return self;
}

@end
