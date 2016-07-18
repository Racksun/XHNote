//
//  XHDataSourceManager.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHDataSourceManager.h"
#import "XHHomeModel.h"

@implementation XHDataSourceManager
//单例
+(instancetype)shareManager{
    static XHDataSourceManager * manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[XHDataSourceManager alloc] init];
    });
    return manager;
}

-(void)getHomeDataSource:(void (^)(NSArray *, NSError *))block{
    XHHomeModel *model = [[XHHomeModel alloc] init];
    model.title = @"动画";
    model.subTitle = @"2016-7-18";
    if (block) {
        block(@[model],nil);
    }
}
@end
