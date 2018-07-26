//
//  Person.h
//  first_oc
//
//  Created by caidou on 2018/7/16.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
}
- (void)setAge:(int)age;
- (int)age;
+ (void)test;
@end
