//
//  XHGoodsCell.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHGoodsCell.h"

@interface XHGoodsCell()
@property (strong, nonatomic) UIImageView *goodsImageView;
@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UIImageView *fineImageView;
@property (strong, nonatomic) UIImageView *giveImageView;
@property (strong, nonatomic) UILabel *specificsLabel;
//@property (strong, nonatomic) UILabel *discountPriceLabel;
//@property (strong, nonatomic)
//@property (strong, nonatomic)

@end
@implementation XHGoodsCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (!self) {
        return nil;
    }
    self.backgroundColor = [UIColor whiteColor];
    _goodsImageView = [[UIImageView alloc] init];
    _nameLabel = [[UILabel alloc] init];
    _nameLabel.font = [UIFont systemFontOfSize:14.0];
    _fineImageView = [[UIImageView alloc] init];
    _giveImageView = [[UIImageView alloc] init];
    _specificsLabel = [[UILabel alloc] init];
    _specificsLabel.font = [UIFont systemFontOfSize:12];
    _specificsLabel.textColor = [UIColor darkGrayColor];
    //_discountPriceLabel = [[UILabel alloc] init];
    
    [self addSubview:_goodsImageView];
    [self addSubview:_nameLabel];
    [self addSubview:_fineImageView];
    [self addSubview:_giveImageView];
    [self addSubview:_specificsLabel];
    
    [_goodsImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self);
        make.top.equalTo(self);
        make.width.equalTo(self.mas_width);
        make.height.equalTo(self.mas_width);
    }];
    
    [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self).offset(5);
        make.top.equalTo(_goodsImageView.mas_bottom);
        make.trailing.equalTo(self).offset(-5);
        make.height.mas_equalTo(20);
    }];
    
    [_fineImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(_nameLabel);
        make.top.equalTo(_nameLabel.mas_bottom);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(15);
    }];
    
    [_giveImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(_fineImageView.mas_trailing);
        make.top.equalTo(_fineImageView);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(15);
    }];
    
    [_specificsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(_nameLabel);
        make.top.equalTo(_fineImageView);
        make.width.equalTo(self.mas_width);
        make.height.mas_equalTo(20);
    }];
    
    
    return self;
}


@end
