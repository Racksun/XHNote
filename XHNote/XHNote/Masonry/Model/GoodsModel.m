//
//  GoodsModel.m
//  XHNote
//
//  Created by LouKe on 16/7/19.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "GoodsModel.h"

@implementation GoodsModel
+ (NSDictionary *)mj_replacedKeyFromPropertyName {
    return @{@"gid" : @"id"};
}
@end


/**
 *  在一个类文件里定义多个类 如果未实现下面的内容会报错
 
 
 Undefined symbols for architecture arm64:
 "_OBJC_CLASS_$_GoodsData", referenced from:
 objc-class-ref in XHDataSourceManager.o
 ld: symbol(s) not found for architecture arm64
 clang: error: linker command failed with exit code 1 (use -v to see invocation)
 
 */
@implementation GoodsData

+ (NSDictionary *)mj_objectClassInArray {
    return @{@"data":NSStringFromClass([GoodsModel class])};
}
@end