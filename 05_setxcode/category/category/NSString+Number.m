//
//  NSString+Number.m
//  category
//
//  Created by caidou on 2018/7/18.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "NSString+Number.h"

@implementation NSString (Number)

+ (int)numberCountOfString:(NSString*)str
{
    return [str numberOfCount];
}

- (int)numberOfCount
{
    int a =0;
    for (int i=0; i<[self length]; ++i)
    {
        unichar c = [self characterAtIndex:i];
        if(c>='0'&&c<='9')
        {
            a++;
        }
    }
    return a;
}

@end
