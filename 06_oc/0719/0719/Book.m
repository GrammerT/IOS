//
//  Book.m
//  0719
//
//  Created by caidou on 2018/7/19.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "Book.h"

@implementation Book

- (void)setPrice:(int)price
{
    self->_price = price;
}
- (int)price
{
    return self->_price;
}

- (void)dealloc
{
    NSLog(@"book release...");
}

@end
