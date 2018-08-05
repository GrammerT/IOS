//
//  NSString+Tools.m
//  weibo
//
//  Created by Grammer on 2018/8/5.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import "NSString+Tools.h"


@implementation NSString (Tools)

- (CGRect) textRectWithSize:(CGSize)size attribute:(NSDictionary*)attributes
{
    return [self boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
}

@end
