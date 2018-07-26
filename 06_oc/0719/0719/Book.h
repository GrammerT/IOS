//
//  Book.h
//  0719
//
//  Created by caidou on 2018/7/19.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
{
    int _price;
}

- (void)setPrice:(int)price;
- (int)price;

@end

