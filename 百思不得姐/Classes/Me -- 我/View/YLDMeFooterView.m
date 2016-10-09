//
//  YLDMeFooterView.m
//  百思不得姐
//
//  Created by 千锋 on 16/9/26.
//  Copyright © 2016年 Mabin. All rights reserved.
//

#import "YLDMeFooterView.h"
#import <AFNetworking.h>
#import "YLDMeSquareModel.h"
#import <UIButton+WebCache.h>
#import "YLDMeSquareButton.h"
#import "YLDWebViewController.h"

@implementation YLDMeFooterView

-(NSMutableArray *)dataArray
{
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
//        self.backgroundColor = [UIColor redColor];
        [self dataArray];
        //参数
        NSMutableDictionary * params = [NSMutableDictionary dictionary];
        params[@"a"] = @"square";
        params[@"c"] = @"topic";
        
        AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
        manager.responseSerializer = [AFHTTPResponseSerializer serializer];
        
        [manager GET:@"http://api.budejie.com/api/api_open.php" parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
            NSArray * array = dict[@"square_list"];
            
            for (NSDictionary * dict1 in array) {
                NSString * str = dict1[@"ipad"];
                if (str.length > 0) {
                    Square_List * model = [[Square_List alloc]initWithDictionary:dict1 error:nil];
                    [_dataArray addObject:model];
                }
                
            }
            [self createFootView:_dataArray];
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
            NSLog(@"请求失败");
        }];
    }
    return self;
}


//根据模型对象创建控件
-(void)createFootView:(NSMutableArray *)array
{
    //方块的总格数
    NSUInteger count = array.count;
    
    //方块的尺寸
    //一行显示多少个方块
    int num = 4;
    CGFloat buttonW = self.yld_width / num;
    CGFloat buttonH = buttonW;
    //创建方块
    for (NSUInteger i = 0; i < count; i ++)
    {
        //取出i下标所对应的模型数据
//        if ((i + 2) < array.count )
//        {
            Square_List * model = array[i];
//            Square_List * model1 = array[i+1];
//            Square_List * model2 = array[i+2];
        
            
//            if (model.name == model1.name)
//            {
//                [array removeObject:model1];
//                [array removeObject:model2];
//            }
        //创建按钮方块
        YLDMeSquareButton * button = [YLDMeSquareButton buttonWithType:UIButtonTypeCustom];
        [self addSubview: button];
        
        //设置frame
        button.yld_x = (i % num) * buttonW;
        button.yld_y = (i / num) * buttonH;
        button.yld_width = buttonW;
        button.yld_height = buttonH;
        
        //设置Button的数据模型
        button.square = model;
    
    
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
//           }
    
    }
    //设置FootView的高度 == 最后一个按钮的最大Y值
    self.yld_height = self.subviews.lastObject.yld_y + self.subviews.lastObject.yld_height;
    //设置TableView的contensize
    UITableView * tableView = (UITableView *)self.superview;
    tableView.tableFooterView = self;
//
    [tableView reloadData];
}


-(void)buttonClick:(YLDMeSquareButton *)button
{
    Square_List * model = button.square;
    if ([model.url hasPrefix:@"http"])
    {
        YLDWebViewController * webView = [[YLDWebViewController alloc]init];
        webView.url = model.url;
        webView.navigationItem.title = model.name;
        
        //拿到self这个控件所在的窗口对应的根视图控制器
//        UITabBarController * tabBarVc = (UITabBarController *)[UIApplication sharedApplication].keyWindow.rootViewController;
//        UINavigationController * nav = tabBarVC.childViewControllers.lastObject;
        UITabBarController * tabBarVC = (UITabBarController *)self.window.rootViewController;
        //拿到TabBarController当前显示的控制器
        UINavigationController * nav = tabBarVC.selectedViewController;
        [nav pushViewController:webView animated:YES];
        
//        NSLog(@"利用webView加载url");
    }
    else if ([model.url hasPrefix:@"mod"])
    {
        if ([model.url hasSuffix:@"BDJ_To_Check"])
        {
            NSLog(@"跳转到[审帖]界面");
        }
        else if ([model.url hasSuffix:@"BDJ_To_RecentHot"])
        {
            NSLog(@"跳转到[每日排行]界面");
        }
        else if ([model.url hasSuffix:@"BDJ_To_RankingList"])
        {
            NSLog(@"跳转到[排行榜]界面");
        }
        else if ([model.url hasSuffix:@"BDJ_To_Mine@dest=2"])
        {
            NSLog(@"跳转到[我的收藏]界面");
        }
        else if ([model.url hasSuffix:@"BDJ_To_Cate@cate=3#type=0"])
        {
            NSLog(@"跳转到[随机穿越]界面");
        }
        else if ([model.url hasSuffix:@"App_To_FeedBack"])
        {
           NSLog(@"跳转到[意见反馈]界面");
        }
        else if ([model.url hasSuffix:@"BDJ_To_Mine@dest=1"])
        {
            NSLog(@"跳转到[我的帖子]界面");
        }
        else if ([model.url hasSuffix:@"App_To_SearchUser"])
        {
            NSLog(@"跳转到[搜索]界面");
        }
        else if ([model.url hasSuffix:@"App_To_MyVideo"])
        {
            NSLog(@"跳转到[视频下载]界面");
        }
        else if ([model.url hasSuffix:@"App_To_MyVideo"])
        {
            NSLog(@"跳转到[下载视频]界面");
        }
        else
        {
            NSLog(@"跳转到其他界面");
        }
    }
    else
    {
        NSLog(@"不是http协议或者mod协议");
    }
}


@end
