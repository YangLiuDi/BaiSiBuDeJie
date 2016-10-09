//
//  YLDSettingViewController.m
//  百思不得姐
//
//  Created by 千锋 on 16/8/20.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDSettingViewController.h"

@interface YLDSettingViewController ()

@end

@implementation YLDSettingViewController

-(instancetype)init
{
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
   self.view.backgroundColor = [UIColor colorWithRed:206 /255.0 green: 206 / 255.0 blue:206 / 255.0 alpha:1];
   self.navigationItem.title = @"设置";
    [self getCacheSize];
}


-(void)getCacheSize
{
    //获得缓存文件夹路径
    NSString * cachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    NSString * dirpath = [cachesPath stringByAppendingPathComponent:@"MP3"];
    NSFileManager * manager = [NSFileManager defaultManager];
//    获取文件夹属性
//    NSDictionary * attrs = [manager attributesOfItemAtPath:dirpath error:nil];
    //    获取文件夹大小
//    [manager contentsOfDirectoryAtPath:dirpath error:nil];

    
//    NSArray * subpaths = [manager subpathsAtPath:dirpath];
//    for (NSString * subPath in subpaths) {
//        //获取文件的属性
//        
//
//    }

}


#pragma mark - 表格的代理方法
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 2;
//}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * ID = @"setting";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text = @"清除缓存";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}



@end
