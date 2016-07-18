//
//  XHHomeCell.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHHomeCell.h"

@implementation XHHomeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setSource:(XHHomeModel *)source{
    _source = source;
    self.cellTitle.text = _source.title;
    self.cellSubTitle.text = _source.subTitle;
}
@end
