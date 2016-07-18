//
//  XHMasonryDemo1Controller.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHMasonryDemo1Controller.h"

@interface XHMasonryDemo1Controller ()

@property (strong, nonatomic) UIView *purpleView;
@property (strong, nonatomic) UIView *greenView;
@property (strong, nonatomic) UIView *redView;
@property (strong, nonatomic) UIView *yellowView;
@property (strong, nonatomic) UIView *orangeView;;

@end

@implementation XHMasonryDemo1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.purpleView = [[UIView alloc] init];
    self.purpleView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:self.purpleView];
    
    
    [self.purpleView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.bottom.equalTo(self.view).offset(-30);
        make.leading.equalTo(self.view).offset(20);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    
    self.greenView = [[UIView alloc] init];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    [self.greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@100);
        make.trailing.equalTo(@-100);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
    
    self.redView = [[UIView alloc] init];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    [self.redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsMake(280, 200, 89, 30));
    }];
    
    
    self.yellowView = [[UIView alloc] init];
    self.orangeView = [[UIView alloc] init];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    self.orangeView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.yellowView];
    [self.view addSubview:self.orangeView];
    
    [self.yellowView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.offset(20);
        make.bottom.offset(-200);
        make.trailing.equalTo(self.orangeView.mas_leading).offset(-20);
        make.height.mas_equalTo(50);
        make.height.equalTo(self.orangeView.mas_height);
    }];
    
    [self.orangeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.redView.mas_leading).offset(-20);
        make.top.equalTo(self.yellowView.mas_top);
        make.width.equalTo(self.yellowView.mas_width);
    }];
}


@end
