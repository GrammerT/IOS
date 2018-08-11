//
//  QQMessage.h
//  qq_chatUI
//
//  Created by Grammer on 2018/8/8.
//  Copyright © 2018年 Grammer. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    eBySelf,
    eByOther
}TextBy;

@interface QQMessage : NSObject

@property (nonatomic,copy) NSString *text;
@property (nonatomic,copy) NSString *time;
@property (nonatomic,assign) TextBy type;


@property (nonatomic,assign) BOOL hideTime;

- (instancetype)initWithDictionary:(NSDictionary*)dict;
+ (instancetype)messageWithDictionary:(NSDictionary*)dict;
+ (NSArray*)messages;

@end
