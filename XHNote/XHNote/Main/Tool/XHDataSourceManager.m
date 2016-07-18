//
//  XHDataSourceManager.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHDataSourceManager.h"
#import "XHHomeModel.h"
#import "XHMasonryModel.h"

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
    XHHomeModel *model1 = [[XHHomeModel alloc] init];
    model1.title = @"动画";
    model1.subTitle = @"2016-7-18";
    
    XHHomeModel *model2 = [[XHHomeModel alloc] init];
    model2.title = @"Masonry";
    model2.subTitle = @"2016-7-18";
    model2.targetClass = @"XHMasonryViewController";
    if (block) {
        block(@[model1, model2],nil);
    }
}

-(void)getMasonryDataSource:(void (^)(NSArray *, NSError *))block{
    
    XHMasonryModel *model1 = [[XHMasonryModel alloc] init];
    model1.title = @"Masonry 的简单使用";
    model1.targetClass = @"XHMasonryDemo1Controller";
    if(block){
        block(@[model1], nil);
    }
}
@end
