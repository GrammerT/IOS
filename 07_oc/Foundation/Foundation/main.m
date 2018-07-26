//
//  main.m
//  Foundation
//
//  Created by caidou on 2018/7/20.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    /*
    NSRange
    NSPoint
    NSSize
    NSRect
    */
//    struct Date
//    {
//        int year;
//        int month;
//        int days;
//    };
//    struct Date d = {2011,9,11};
//    struct Date d1 ;
//
    /*
    NSRange r1 = {2,4};
    NSRange r2 = {2,4};
    NSRange r3;
    NSMakeRange(2, 4);
    NSString *str = @"i love oc";
    NSRange ng = [str rangeOfString:@"love"];
    NSLog(@"%ld  %ld",ng.length,ng.location);
    
    CGPoint p1 = CGPointMake(3, 5);
    */
    //! NSString NSMultableString
    //! create string
    NSString *s1 = @"2134154";
    NSString *s2 = [[NSString alloc] initWithString:@"233"];
    NSString *s3 = [[NSString alloc] initWithFormat:@"age is %d",10];
    NSString *s4 = [[NSString alloc] initWithUTF8String:"jack"];// c str---> oc str
    const char *cs = [s4 UTF8String]; //! oc ---> c
    

    NSString *s5 = [[NSString alloc] initWithContentsOfFile:@"/Users/tangzhiqiang/Desktop/test.rtf" encoding:NSUTF8StringEncoding error: nil];
    
//    NSLog(@"%@",s5);
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.hao123.com"];
    NSString *s6 = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"\n%@",s6);
    
    
    NSURL *url1 = [NSURL URLWithString:@""];
    NSString *s7 = [NSString stringWithFormat:@"age is %d",10];
    [NSString stringWithContentsOfFile:url encoding:NSUTF8StringEncoding error:nil];
    
    
    [NSURL fileURLWithPath:@""];
    
    [@"dfsjkfdjfhask" writeToFile:@"/Users/tangzhiqiang/Desktop/tzq.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    
    
    //! NSMutableString
    NSMutableString *ms1 = [NSMutableString stringWithFormat:@"age is 10"];
    [ms1 appendString:@" 11 12"];
    NSLog(@"%@",ms1);
    [ms1 deleteCharactersInRange:NSMakeRange(4, 5)];
    NSLog(@"%@",ms1);
    
    NSRange range = [ms1 rangeOfString:@"11"];
    
    [ms1 deleteCharactersInRange:range];
    NSLog(@"%@",ms1);
    //!  NSArray
    int ages[10];
    Person *p = [[Person alloc] init];
    Person *persons[5];
    NSArray *array = [NSArray array];
    NSArray *array2 = [NSArray arrayWithObject:@"jack"];
    NSArray *array3 = [NSArray arrayWithObjects:@"jave",@"c",nil];
    NSArray *array4 = @[@"jave",@"c"];
    
    
    NSLog(@"---------------%d",array2.count);
    NSLog(@"---------------%d",array3.count);
    NSLog(@"---------------%d",array3.count);
    NSLog(@"---------------%d",array3.count);
    
    NSLog(@"%@",[array2 objectAtIndex:0]);
    
    
    NSLog(@"%@",array3[1]);
    NSLog(@"%@",array4[1]);
    
    
    Person *p1 = [[Person alloc] init];
    NSArray *array5 = @[p1,@"jack",@"10201101012"];
//    for(int i=0;i<array5.count;++i)
//    {
//        NSLog(@"%@",array5[i]);
//    }
    for(id obj in array5)
    {
        NSUInteger a = [array5 indexOfObject:obj];
        NSLog(@"%ld ---- %@",a,obj);
    }
    
    [array5 enumerateObjectsUsingBlock:^(id obj,NSUInteger idx,BOOL *stop){
        NSLog(@"%ld--%@--%c",idx,obj,stop);
        if(idx ==  1)
        {
            *stop = YES;
        }
    }];
    
    return 0;
}



