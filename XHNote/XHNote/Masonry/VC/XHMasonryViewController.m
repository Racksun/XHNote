//
//  XHMasonryViewController.m
//  XHNote
//
//  Created by LouKe on 16/7/18.
//  Copyright © 2016年 IT_WXH. All rights reserved.
//

#import "XHMasonryViewController.h"
#import "XHMasonryModel.h"
@interface XHMasonryViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableview;
@property (strong, nonatomic) NSArray *dataSource;

@end

@implementation XHMasonryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Masonry";
    
    self.tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    [self.view addSubview:self.tableview];
    self.tableview.bounds= self.view.bounds;
    
    self.tableview.delegate = self;
    self.tableview.dataSource = self;

    [[XHDataSourceManager shareManager] getMasonryDataSource:^(NSArray *array, NSError *erro) {
        self.dataSource = array;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataSource count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *masonryCellIdentify = @"masonryCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:masonryCellIdentify];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:masonryCellIdentify];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    XHMasonryModel *source = [self.dataSource objectAtIndex:indexPath.row];
    cell.textLabel.text = source.title;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  60;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    XHMasonryModel *source = [self.dataSource objectAtIndex:indexPath.row];
    UIViewController *viewController = [[NSClassFromString(source.targetClass) alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
    
}

@end
