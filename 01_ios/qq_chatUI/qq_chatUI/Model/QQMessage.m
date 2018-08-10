//
//  QQMessage.m
//  qq_chatUI
//
//  Created by Grammer on 2018/8/8.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "QQMessage.h"

@implementation QQMessage

- (instancetype)initWithDictionary:(NSDictionary*)dict
{
    self = [super init];
    if(self)
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)messageWithDictionary:(NSDictionary*)dict
{
    return [[self alloc] initWithDictionary:dict];
}

+ (NSArray*)messages
{
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"messages.plist" ofType:nil]];
    NSMutableArray *marray = [NSMutableArray array];
    for(NSDictionary *dict in array)
    {
        [marray addObject:[self messageWithDictionary:dict]];
    }
    return marray;
}


@end
