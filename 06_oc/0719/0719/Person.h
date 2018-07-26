//
//  Person.h
//  0719
//
//  Created by caidou on 2018/7/19.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;

@interface Person : NSObject

@property (nonatomic, strong) Book* book;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

+ (id)person;

+ (id)personWithAge:(int)age;

@end
