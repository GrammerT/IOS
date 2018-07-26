//
//  main.m
//  category
//
//  Created by caidou on 2018/7/18.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+MJ.h"
#import "NSString+Number.h"

int main(int argc, const char * argv[]) {
    
    Person *p = [[Person alloc] init];
//    [p study];
    
    NSString *ss = @"djfsj54641sdfsojdfaj3565464";
//    NSLog(@"%d",[NSString numberCountOfString:ss]);
    [p performSelector:@selector(study)];
    NSLog(@"%@",p );
    
    return 0;
}
