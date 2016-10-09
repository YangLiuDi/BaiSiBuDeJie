//
//  YLDLoginRegisterViewController.m
//  百思不得姐
//
//  Created by 千锋 on 16/8/22.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDLoginRegisterViewController.h"

@interface YLDLoginRegisterViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftMargin;


@end

@implementation YLDLoginRegisterViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _loginButton.layer.cornerRadius = 5;
    _loginButton.clipsToBounds = YES;
    [_loginButton addTarget:self action:@selector(loginButton:) forControlEvents:UIControlEventTouchUpInside];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

//关闭当前界面
- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

//显示登录注册/界面
- (IBAction)showLoginOrRegister:(UIButton *)button
{
    //退出键盘
    [self.view endEditing:YES];
    
    if (self.leftMargin.constant != 0)
    {
        //目前显示的是注册页面,点击按钮之后,我们要切换为登录页面
        self.leftMargin.constant = 0;
        [button setTitle:@"注册账号" forState:UIControlStateNormal];
    }
    else
    {
        //目前显示的是登录页面,点击按钮之后,我们要切换为注册页面
        self.leftMargin.constant = - self.view.yld_width;
        [button setTitle:@"已有账号?" forState:UIControlStateNormal];
    }
    [UIView animateWithDuration:0.5 animations:^{
        //这个Block里面写的代码  必须是直接修改UI界面的代码
        //强制刷新 : 让最新设置的约束值马上应用到UI空间上
        [self.view layoutIfNeeded];
    }];
}


-(void)loginButton:(UIButton *)button
{
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
