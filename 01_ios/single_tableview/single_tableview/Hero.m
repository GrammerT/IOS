//
//  Hero.m
//  single_tableview
//
//  Created by caidou on 2018/7/26.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "Hero.h"

@implementation Hero

- (instancetype)initWithDict:(NSDictionary *)dict
{
    self = [super init];
    if(self)
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)heroWithDict:(NSDictionary*)dict
{
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)heros
{
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"heros.plist" ofType:nil]];
    NSMutableArray *arraym = [NSMutableArray array];
    for (NSDictionary *dict in array) {
        [arraym addObject:[self heroWithDict:dict]];
    }
    return arraym;
}

@end
