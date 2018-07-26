//
//  Person.h
//  03_oc
//
//  Created by caidou on 2018/7/17.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    NSString *_name;
}

- (void)setAge:(int)age;
- (int)age;


@end
