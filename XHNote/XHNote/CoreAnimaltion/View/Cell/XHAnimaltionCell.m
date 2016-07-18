//
//  XHAnimaltionCell.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHAnimaltionCell.h"

@implementation XHAnimaltionCell

+(UITableViewCell *)animalCellWithTableview:(UITableView *)tableview{
    static NSString *animalCellIdentify = @"animalCellIdentify";
    XHAnimaltionCell *cell = [tableview dequeueReusableCellWithIdentifier:animalCellIdentify];
    if (!cell) {
        cell = [[XHAnimaltionCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:animalCellIdentify];
    }
    return cell;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
    }
    return self;
}
@end
