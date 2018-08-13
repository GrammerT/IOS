//
//  QQFriend.m
//  QQ_Friends
//
//  Created by Grammer on 2018/8/13.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "QQFriend.h"

@implementation QQFriend


- (instancetype)initWithDictionary:(NSDictionary*)dict
{
    self = [super init];
    if(self)
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)friendWithDictionary:(NSDictionary*)dict
{
    return [[self alloc] initWithDictionary:dict];
}

//+ (NSArray*)friends
//{
//    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"<#filename#>" ofType:nil]];
//    NSMutableArray *marray = [NSMutableArray array];
//    for(NSDictionary *dict in array)
//    {
//        [marray addObject:[self statusWithDictionary:dict]];
//    }
//    return marray;
//}

@end
