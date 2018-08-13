//
//  QQFriendGroup.m
//  QQ_Friends
//
//  Created by Grammer on 2018/8/13.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "QQFriendGroup.h"
#import "QQFriend.h"

@implementation QQFriendGroup



- (instancetype)initWithDictionary:(NSDictionary*)dict
{
    self = [super init];
    if(self)
    {
        [self setValuesForKeysWithDictionary:dict];
        NSMutableArray *arr = [NSMutableArray array];
        
        for (NSDictionary *dic in self.friends) {
            QQFriend *fri = [QQFriend friendWithDictionary:dic];
            [arr addObject:fri];
        }
        self.friends = arr;
        NSLog(@"%ld",self.friends.count);
    }
    return self;
}

+ (instancetype)friendGroupWithDictionary:(NSDictionary*)dict
{
    return [[self alloc] initWithDictionary:dict];
}

+ (NSArray*)friendGroups
{
    NSArray *array = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"friends.plist" ofType:nil]];
    NSMutableArray *marray = [NSMutableArray array];
    for(NSDictionary *dict in array)
    {
        [marray addObject:[self friendGroupWithDictionary:dict]];
    }
    return marray;
}

@end
