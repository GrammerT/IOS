//
//  main.m
//  design_pattarn
//
//  Created by caidou on 2018/7/20.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Agent.h"

int main(int argc, const char * argv[]) {

    return 0;
}

void test()
{
    Person *p = [[Person alloc] init];
    Agent *a = [[Agent alloc] init];
    
    p.delegate = a;
    
    [p buyTicket];
    
    [a release];
    [p release];
}
