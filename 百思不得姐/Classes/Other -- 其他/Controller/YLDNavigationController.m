//
//  YLDNavigationController.m
//  百思不得姐
//
//  Created by 千锋 on 16/8/20.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDNavigationController.h"

@interface YLDNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation YLDNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.interactivePopGestureRecognizer.delegate = self;
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count >= 1)
    {
      UIButton * backButton = [UIButton buttonWithType:UIButtonTypeCustom];
      [backButton setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
      [backButton setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
      [backButton setTitle:@"返回" forState:UIControlStateNormal];
      [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
      [backButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
      [backButton sizeToFit];
    //    backButton.imageEdgeInsets = UIEdgeInsetsMake(10, 0, 0, 0);
    //    backButton.titleEdgeInsets = UIEdgeInsetsMake(10, 0, 0, 0);
      backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
      [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
      viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backButton];
        
        viewController.hidesBottomBarWhenPushed = YES;
    }
     [super pushViewController:viewController animated:animated];

}

-(void)back
{
    [self popViewControllerAnimated:YES];
}

#pragma mark - 右滑手势
//手势识别器对象会调用这个代理方法来决定手势是否有效
-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
//    if (self.childViewControllers.count == 1)
//    {
//        //无效
//        return NO;
//    }
//    //有效
//    return YES;
    
    
    //手势何时有效:当导航栏的子控制器个数 > 1 时就有效,< 1 时无效
    return self.childViewControllers.count > 1;
}

@end
