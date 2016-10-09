//
//  YLDFollowViewController.m
//  Best not elder sister
//
//  Created by 千锋 on 16/8/17.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDFollowViewController.h"
#import "YLDLoginRegisterViewController.h"
#import "YLDRecommendFollowViewController.h"

@interface YLDFollowViewController ()

@end

@implementation YLDFollowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 self.view.backgroundColor = [UIColor colorWithRed:206 /255.0 green: 206 / 255.0 blue:206 / 255.0 alpha:1];
    self.navigationItem.title = @"我的关注";
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" hightImage:@"friendsRecommentIcon-click" target:self action:@selector(followClick)];
}


-(void)followClick
{
    NSLog(@"我的关注");
    YLDRecommendFollowViewController * test = [[YLDRecommendFollowViewController alloc]init];

//    test.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:test animated:YES];
}
- (IBAction)action:(id)sender
{
    YLDLoginRegisterViewController * loginRegister = [[YLDLoginRegisterViewController alloc]init];
    [self presentViewController:loginRegister animated:YES completion:nil];
}

@end
