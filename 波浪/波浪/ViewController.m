//
//  ViewController.m
//  波浪
//
//  Created by LuzhiChao on 16/9/23.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import "ViewController.h"
#import "ZCWave.h"
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    ZCWave *_headerView;
    UITableView *_tableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];

    _headerView = [[ZCWave alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    _headerView.backgroundColor = [UIColor colorWithRed:248/255.0 green:64/255.0 blue:87/255.0 alpha:1];
    _headerView.waveBlock = ^(CGFloat currentY){
    };
    [_headerView startWaveAnimation];
    
    _tableView.tableHeaderView = _headerView;

    UIImageView *headImage = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width*3/8, 60, self.view.frame.size.width/4, self.view.frame.size.width/4)];
    headImage.image = [UIImage imageNamed:@"1.jpg"];
    headImage.layer.cornerRadius = self.view.frame.size.width/8;
    headImage.layer.masksToBounds = YES;
    [_headerView addSubview:headImage];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *iden = @"iden";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:iden];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:iden];
    }
    cell.textLabel.text = @"大波浪~~";
    return cell;
}


@end
