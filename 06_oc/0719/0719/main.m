//
//  main.m
//  0719
//
//  Created by caidou on 2018/7/19.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Person.h"


int main(int argc, const char * argv[]) {

    Person *p = [[Person alloc] init];
    Book *b = [[Book alloc] init];
    p.book = b;
    Book *b1 = [[Book alloc] init];
    p.book = b1;
    
    NSLog(@"%@",p);
    return 0;
}
