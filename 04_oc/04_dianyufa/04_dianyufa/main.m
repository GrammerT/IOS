//
//  main.m
//  04_dianyufa
//
//  Created by caidou on 2018/7/17.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [Person new];

    Person *p2 = [[Person alloc] init];

    NSLog(@"%@ is %d",p2.name, p2.age);

    Person *p3 = [[Person alloc] initWithName:@"Grammer"];
    NSLog(@"%@ is %d",p3.name, p3.age);

    Person *p4 = [[Person alloc] initWithAge:66 andName:@"xiang"];
    NSLog(@"%@ is %d",p4.name, p4.age);

    Student *stu = [[Student alloc] initWithNum:888];
    
    NSLog(@" is %d", stu.no);

    return 0;
}
