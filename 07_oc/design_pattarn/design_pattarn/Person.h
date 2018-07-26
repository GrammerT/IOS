//
//  Person.h
//  design_pattarn
//
//  Created by caidou on 2018/7/20.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TicketDelegate;

@interface Person : NSObject

@property (nonatomic,retain) id<TicketDelegate> delegate;

- (void) buyTicket;



@end
