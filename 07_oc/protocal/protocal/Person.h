//
//  Person.h
//  protocal
//
//  Created by caidou on 2018/7/20.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyProtocol2;
@protocol MyProtocal;


@interface Person : NSObject <MyProtocal,MyProtocol2>

@property (nonatomic,strong) id<MyProtocol2> obj;

@end
