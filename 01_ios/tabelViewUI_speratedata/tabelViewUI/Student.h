//
//  Student.h
//  tabelViewUI
//
//  Created by caidou on 2018/7/26.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic,strong) NSString *title;
//! can't use description attribute.
@property (nonatomic,strong) NSString *desc;

@property (nonatomic,strong) NSArray *students;

@end
