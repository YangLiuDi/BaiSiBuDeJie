//
//  YLDEssenceViewController.m
//  Best not elder sister
//
//  Created by 千锋 on 16/8/17.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDEssenceViewController.h"

@interface YLDEssenceViewController ()

@end

@implementation YLDEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:206 /255.0 green: 206 / 255.0 blue:206 / 255.0 alpha:1];
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" hightImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
}


-(void)tagClick
{
    NSLog(@"精华");
}


@end
