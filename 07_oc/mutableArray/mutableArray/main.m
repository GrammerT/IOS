//
//  main.m
//  mutableArray
//
//  Created by caidou on 2018/7/21.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSMutableArray *array = [NSMutableArray array];
    
    
    NSSet *s = [NSSet set];
    NSSet *s1 = [NSSet setWithObjects:@"666",@"667",@"668", nil];
    
    NSLog(@"%d",s1.count);
    
    NSString *str = [s1 anyObject];
    NSLog(@"%@",str);
    
    
    
    NSMutableSet *ms1 = [NSMutableSet setWithObjects:@"4",@"466",@"41", nil];
    

    //! dictionary
    NSDictionary *d = [NSDictionary dictionaryWithObject:@"jack" forKey:@"name"];
    NSArray *array1 = @[@"name",@"address"];
    NSArray *key = @[@"tzq",@"beijing"];
    NSDictionary *d2 = [NSDictionary dictionaryWithObjects:key forKeys:array1];
    
    NSDate *date= [NSDate date];
    NSLog(@"%@",date);

    NSDate *date2 = [NSDate dateWithTimeInterval:5 sinceDate:date];
    NSLog(@"%@",date2);

    return 0;
}
