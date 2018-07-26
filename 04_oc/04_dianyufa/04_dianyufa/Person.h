//
//  Person.h
//  04_dianyufa
//
//  Created by caidou on 2018/7/17.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property int age;


- (id)initWithName:(NSString*)name;

- (id)initWithAge:(int)age andName:(NSString*)name;
@end
