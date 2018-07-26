//
//  Person.m
//  design_pattarn
//
//  Created by caidou on 2018/7/20.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import "Person.h"
#import "Agent.h"
#import "TicketDelegate.h"

@implementation Person

- (void) buyTicket
{
    //! let agent buy ticket.
    double price = [_delegate ticketPrice];
    int num = [_delegate leftTicketNumber];
    NSLog(@"%f buy ticket and see %d movie...",num ,price);
}

- (void) dealloc
{
    [_delegate release];
    [super dealloc];
}

@end
