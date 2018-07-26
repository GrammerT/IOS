//
//  main.m
//  first_oc
//
//  Created by caidou on 2018/7/16.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main() {
    NSLog(@"2314221");
    int a = 10;
    
    int b = a;
    NSLog(@"%d",b);
    Person *p =[Person new];
    [p setAge:15];
    NSLog(@"age is %d",[p age]);
    return 0;
}
