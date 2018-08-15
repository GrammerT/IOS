//
//  QQFriendGroup.h
//  QQ_Friends
//
//  Created by Grammer on 2018/8/13.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QQFriendGroup : NSObject

@property (nonatomic,strong) NSArray *friends;

@property (nonatomic,copy) NSString *name;

@property (nonatomic,assign) int  online;

@property (nonatomic,assign,getter=isOpen) BOOL open;


- (instancetype)initWithDictionary:(NSDictionary*)dict;
+ (instancetype)friendGroupWithDictionary:(NSDictionary*)dict;
+ (NSArray*)friendGroups;



@end
