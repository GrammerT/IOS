//
//  main.m
//  block
//
//  Created by caidou on 2018/7/20.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int (*sumP) (int ,int );
typedef int (^MyBlock)(int,int);


int main(int argc, const char * argv[]) {
    
    MyBlock block1=
    ^(int a,int b)
    {
        return 1;
    };
    NSLog(@"xsfi____%d",block1(4,5));
    
    return 0;
}

void test1()
{
    //! 1 dingyi block bianliang
    void (^myblock)(void)=
    ^{
        NSLog(@"------------");
        NSLog(@"------------");
    };
    //! 2
    int (^add)(int ,int ) =
    ^(int a,int b)
    {
        return a+b;
    };
    //! 3
    void (^OutLine)(int)=
    ^(int n)
    {
        for(int i=0;i<n;++i)
        {
            NSLog(@"-------------");
        }
    };
    //! use block var
    
    myblock();
    NSLog(@"%d",add(5,6));
    OutLine(8);
}

void test()
{
    NSLog(@"---------------------");
}
