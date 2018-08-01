//
//  TuanGou.m
//  0731-tuangou
//
//  Created by Grammer on 2018/7/31.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "TuanGou.h"

@implementation TuanGou


- (instancetype)initWithDict:(NSDictionary*)dict
{
    self = [super init];
    if(self)
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)tgWithDict:(NSDictionary*)dict
{
    return [[self alloc] initWithDict:dict];
}

+ (NSMutableArray*) tgs
{
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"tgs.plist" ofType:nil]];
    
    NSMutableArray *marray = [NSMutableArray array];
    for(NSDictionary *dict in array)
    {
        [marray addObject:[self tgWithDict:dict]];
    }
    return marray;
}



@end
