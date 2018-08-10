//
//  NSString+tool.m
//  qq_chatUI
//
//  Created by Grammer on 2018/8/8.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "NSString+tool.h"

@implementation NSString (tool)


- (CGRect) textRectWithSize:(CGSize)size attribute:(NSDictionary*)attributes
{
    return [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
}

@end
