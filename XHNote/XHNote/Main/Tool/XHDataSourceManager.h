//
//  XHDataSourceManager.h
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XHDataSourceManager : NSObject
+ (instancetype)shareManager;

//- (void)getHomeDataSource:(NSArray* (^)())block;
- (void)getHomeDataSource:(void(^)(NSArray * array, NSError *error))block;
- (void)getMasonryDataSource:(void(^)(NSArray *array, NSError *erro))block;

- (void)loadGoodsDataSource:(void(^)(NSArray *array, NSError *error))complete;
@end
