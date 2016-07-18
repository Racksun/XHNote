//
//  XHHomeCell.h
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XHHomeModel.h"
@interface XHHomeCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *cellTitle;
@property (weak, nonatomic) IBOutlet UILabel *cellSubTitle;
@property (strong, nonatomic) XHHomeModel *source;
@end
