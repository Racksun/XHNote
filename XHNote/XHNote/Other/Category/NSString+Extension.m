//
//  NSString+Extension.m
//  XHNote
//
//  Created by LouKe on 16/7/19.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (NSString *)cleanDecimalPointZear {
    NSInteger offset = self.length - 1;
    while (offset > 0) {
        NSString *s = [self substringWithRange:NSMakeRange(offset, 1)];
        
        
        if ([s isEqualToString:@"0"] || [s isEqualToString:@"."] ) {
            offset--;
        }else{
            break;
        }
    }
    return [self substringToIndex:offset + 1];
}

@end
