//
//  main.m
//  calc_code_line
//
//  Created by caidou on 2018/7/21.
//  Copyright © 2018年 caidou. All rights reserved.
//

#import <Foundation/Foundation.h>

NSUInteger calcCodeLine(NSString *path);

int main(int argc, const char * argv[]) {
    
    
//        NSUInteger count = calcCodeLine(@"/Users/tangzhiqiang/Documents/xcode_proj/02_oc/03_oc/03_oc/main.m");
    NSUInteger count = calcCodeLine(@"/Users/tangzhiqiang/Documents/xcode_proj");
    
    NSLog(@"%ld",count);
    
    return 0;
}

NSUInteger calcCodeLine(NSString *path)
{
    NSFileManager *mgr = [NSFileManager defaultManager];
    BOOL dir = NO;
    BOOL exist = [mgr fileExistsAtPath:path isDirectory:&dir];
    if(!exist)
    {
        NSLog(@"file not exist...");
        return 0;
    }

    if(dir)
    {
        NSLog(@"IS DIR ---");
        NSArray *files = [mgr contentsOfDirectoryAtPath:path error:nil];
        int count = 0;
//        NSLog(@"%@",files);
        for(NSString *filename in files)
        {
            NSMutableString *str = [NSMutableString stringWithFormat:@"%@/%@",path,filename];
            NSLog(@"%@",str);
            count += calcCodeLine(str);
        }
        return count;
    }
    else
    {
        NSLog(@"IS FILE ----");
        NSString *contents = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//        NSLog(@"%@",contents);
        NSArray *array = [contents componentsSeparatedByString:@"\n"];
        return array.count;
    }

}


