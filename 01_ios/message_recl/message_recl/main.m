//
//  main.m
//  message_recl
//
//  Created by caidou on 2018/7/24.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int selection = -1;
        while(1)
        {
            print("cin>> :");
            scanf("%d",&selection);
//            NSLog(@"Come here");
            if(selection==0)
            {
                print(@"0");
            }
            else{
                print(@"%d",selection);
            }
        }
    }
    return 0;
}
