//
//  TuanGou.h
//  0731-tuangou
//
//  Created by Grammer on 2018/7/31.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TuanGou : NSObject
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *price;
@property (nonatomic,copy) NSString *buyCount;

- (instancetype)initWithDict:(NSDictionary*)dict;
+ (instancetype)tgWithDict:(NSDictionary*)dict;

+ (NSMutableArray*) tgs;

@end
