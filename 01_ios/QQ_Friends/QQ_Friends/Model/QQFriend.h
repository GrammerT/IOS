//
//  QQFriend.h
//  QQ_Friends
//
//  Created by Grammer on 2018/8/13.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QQFriend : NSObject

@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *intro;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign,getter=isVip) BOOL vip;

- (instancetype)initWithDictionary:(NSDictionary*)dict;
+ (instancetype)friendWithDictionary:(NSDictionary*)dict;
//+ (NSArray*)friends;


@end
