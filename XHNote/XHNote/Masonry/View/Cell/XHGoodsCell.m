//
//  XHGoodsCell.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHGoodsCell.h"
#import "DiscountPriceView.h"


@interface XHGoodsCell()
@property (strong, nonatomic) UIImageView *goodsImageView;
@property (strong, nonatomic) UILabel *nameLabel;
@property (strong, nonatomic) UIImageView *fineImageView;
@property (strong, nonatomic) UIImageView *giveImageView;
@property (strong, nonatomic) UILabel *specificsLabel;
@property (strong, nonatomic) DiscountPriceView *discountPriceView;
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
    [_fineImageView setImage:[UIImage imageNamed:@"jingxuan.png"]];
    _giveImageView = [[UIImageView alloc] init];
    [_giveImageView setImage:[UIImage imageNamed:@"buyOne.png"]];
    _specificsLabel = [[UILabel alloc] init];
    _specificsLabel.font = [UIFont systemFontOfSize:12];
    _specificsLabel.textColor = [UIColor darkGrayColor];
    _discountPriceView = [[DiscountPriceView alloc] init];
    
    [self addSubview:_goodsImageView];
    [self addSubview:_nameLabel];
    [self addSubview:_fineImageView];
    [self addSubview:_giveImageView];
    [self addSubview:_specificsLabel];
    [self addSubview:_discountPriceView];
    
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
        make.top.equalTo(_fineImageView.mas_bottom);
        make.width.equalTo(self.mas_width);
        make.height.mas_equalTo(20);
    }];
    
    [_discountPriceView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self);
        make.leading.equalTo(_nameLabel);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(25);
    }];
    
    
    return self;
}

-(void)setDataSource:(GoodsModel *)dataSource{
    _dataSource = dataSource;
    //self.goodsImageView.backgroundColor = [UIColor redColor];
    
    [self.goodsImageView setImageWithURL:[NSURL URLWithString:_dataSource.img] placeholderImage:[UIImage imageNamed:@"v2_placeholder_square"]];
    self.nameLabel.text = dataSource.name;
    if ([dataSource.pm_desc isEqualToString:@"买一赠一"]) {
        self.giveImageView.hidden = NO;
    }else{
        self.giveImageView.hidden = YES;
    }
    self.specificsLabel.text = dataSource.specifics;
    self.discountPriceView.goods = dataSource;
    
}
@end
