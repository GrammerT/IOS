//
//  WBStatus.h
//  weibo
//
//  Created by Grammer on 2018/8/2.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WBStatus : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *picture;
@property (nonatomic,assign) BOOL vip;


- (instancetype)initWithDictionary:(NSDictionary*)dict;

+ (instancetype)statusWithDictionary:(NSDictionary*)dict;

//+ (NSMutableArray*)statuses;


@end
