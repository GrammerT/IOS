//
//  Hero.h
//  single_tableview
//
//  Created by caidou on 2018/7/26.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *intro;

- (instancetype)initWithDict:(NSDictionary*)dict;


@end
