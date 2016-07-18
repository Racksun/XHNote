//
//  XHHomeViewController.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHHomeViewController.h"
#import "XHHomeCell.h"
#import "XHHomeModel.h"

@interface XHHomeViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *homeTableView;

@end

@implementation XHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.homeTableView.dataSource = self;
    self.homeTableView.delegate = self;
    //默认yes 下沉64个单位
    self.automaticallyAdjustsScrollViewInsets = NO;
    // Do any additional setup after loading the view.
    [[XHDataSourceManager shareManager] getHomeDataSource:^(NSArray *array, NSError *error) {
        self.dataSource = array;
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
} 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    XHHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"homeCellIdentifer"];
    cell.source = [self.dataSource objectAtIndex:indexPath.row];
    
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    XHHomeModel *model = [self.dataSource objectAtIndex:indexPath.row];
    UIViewController *viewController = [[NSClassFromString(model.targetClass) alloc] init];
    
    [self.navigationController pushViewController:viewController animated:YES];
}
@end
