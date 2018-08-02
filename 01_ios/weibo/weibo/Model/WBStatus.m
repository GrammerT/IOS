//
//  WBStatus.m
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "WBStatus.h"

@interface WBStatus ()


@end

@implementation WBStatus

- (instancetype)initWithDictionary:(NSDictionary*)dict
{
    self = [super init];
    if(self)
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)statusWithDictionary:(NSDictionary*)dict
{
    return [[self alloc] initWithDictionary:dict];
}

//+ (NSMutableArray*)statuses
//{
//    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil]];
//    NSMutableArray *marray = [NSMutableArray array];
//    for(NSDictionary *dict in array)
//    {
//        [marray addObject:[self statusWithDictionary:dict]];
//    }
//    return marray;
//}

@end
