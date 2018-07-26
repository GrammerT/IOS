//
//  main.m
//  protocal
//
//  Created by caidou on 2018/7/20.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocol2.h"
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [[Person alloc] init];
    
    Dog *d = [[Dog alloc] init];
    
    p.obj = d;
    
    
    
    
    
    
    
//    NSObject *obj = [[NSObject alloc] init];
//    NSObject *obj2 = @"23113";
//
//
//    NSObject<MyProtocol2> *obj3 = [[NSObject alloc] init];
//
//
//    obj3 = nil;
//    NSObject<MyProtocol2> *obj4 = [[Person alloc] init];
//
//    id<MyProtocol2> obj5 = [[Person alloc] init];
//    obj5 = nil;
    
    
    return 0;
}
