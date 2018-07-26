//
//  MyProtocal.h
//  protocal
//
//  Created by caidou on 2018/7/20.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MyProtocal <NSObject>

@required
- (void)test1;
@optional
- (void)test2;
- (void)test3;


@end
