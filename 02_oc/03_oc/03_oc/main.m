//
//  main.m
//  03_oc
//
//  Created by caidou on 2018/7/17.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main() {
    Person *p = [Person new];
    [p setAge:15];
    
    int a = [p age];
    
    NSLog(@"age is %d",a);
    return 0;
}
