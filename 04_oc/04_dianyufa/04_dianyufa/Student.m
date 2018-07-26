//
//  Student.m
//  04_dianyufa
//
//  Created by caidou on 2018/7/18.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "Student.h"

@implementation Student

- (id) initWithNum:(int)no
{
    if(self=[super init])
    {
        self.no = no;
    }
    return self;
}

@end
