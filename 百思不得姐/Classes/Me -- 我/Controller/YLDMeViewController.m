//
//  YLDMeViewController.m
//  Best not elder sister
//
//  Created by 千锋 on 16/8/17.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDMeViewController.h"
#import "YLDSettingViewController.h"
#import "YLDMeCell.h"
#import "YLDMeFooterView.h"
@interface YLDMeViewController ()

@end

@implementation YLDMeViewController

-(instancetype)init
{
    return [self initWithStyle:UITableViewStyleGrouped];
}


- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self createTableView];
    
    [self createNavigation];
    
}

-(void)createTableView
{
    self.tableView.sectionHeaderHeight = 0;
    self.tableView.sectionFooterHeight = YLDMargin;
    self.tableView.contentInset = UIEdgeInsetsMake(YLDMargin - 35, 0, 0, 0);
    self.tableView.backgroundColor = [UIColor colorWithRed:206 /255.0 green: 206 / 255.0 blue:206 / 255.0 alpha:1];
    
    self.tableView.tableFooterView = [[YLDMeFooterView alloc]init];

}

-(void)createNavigation
{
    self.navigationItem.title = @"我的";
    
    
    UIBarButtonItem * settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" hightImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    
    UIBarButtonItem * moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" hightImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    
    self.navigationItem.rightBarButtonItems = @[settingItem,moonItem];
}

-(void)settingClick
{
    YLDSettingViewController * setting = [[YLDSettingViewController alloc]init];
//    setting.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:setting animated:YES];
    
}

-(void)moonClick
{
    NSLog(@"月亮");
}


#pragma mark - 表格的代理方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * ID = @"cell";
    YLDMeCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil)
    {
        cell = [[YLDMeCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%zd", indexPath.section];
    if (indexPath.section == 0)
    {
        cell.textLabel.text = @"登录/注册";
        cell.imageView.image = [UIImage imageNamed:@"setup-head-default"];
    }
    else
    {
        cell.textLabel.text = @"离线下载";
        cell.imageView.image = nil;
    }
    return cell;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (indexPath.section == 2)
//    {
//        return 200;
//    }
//    else
//    {
//        return 44;
//    }
//}

//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//}

//-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    
//}
//
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    
//}


@end
