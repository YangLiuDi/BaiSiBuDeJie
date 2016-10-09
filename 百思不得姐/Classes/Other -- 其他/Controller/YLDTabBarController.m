//
//  YLDTabBarController.m
//  Best not elder sister
//
//  Created by 千锋 on 16/8/17.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDTabBarController.h"
#import "YLDTabBar.h"
#import "YLDEssenceViewController.h"
#import "YLDNewViewController.h"
#import "YLDFollowViewController.h"
#import "YLDMeViewController.h"
#import "YLDNavigationController.h"
@interface YLDTabBarController ()

//@property(strong,nonatomic)UIButton * publishButton;

@end

@implementation YLDTabBarController

#pragma mark - 懒加载
//-(UIButton *)publishButton
//{
//    if (!_publishButton)
//    {
//        _publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        _publishButton.backgroundColor = [UIColor cyanColor];
//        [_publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon@2x"] forState:UIControlStateNormal];
//        [_publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon@2x"] forState:UIControlStateHighlighted];
//        //    [pushlishButton sizeToFit];
//        _publishButton.frame = CGRectMake(0, 0, self.tabBar.frame.size.width / 5, self.tabBar.frame.size.height);
//        _publishButton.center = CGPointMake(self.tabBar.frame.size.width * 0.5, self.tabBar.frame.size.height * 0.5);
//        [_publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
////        [self.tabBar addSubview:_publishButton];
////        _publishButton = pushlishButton;
//    }
//    return _publishButton;
//}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITabBarItem * item = [UITabBarItem appearance];
    //设置普通状态下的文字属性
    NSMutableDictionary * normlAttrs = [NSMutableDictionary dictionary];
    normlAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normlAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normlAttrs forState:UIControlStateNormal];
    //设置选中状态下的文字属性
    NSMutableDictionary * selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    
    //添加子控制器
    [self addOneChildViewController:[[YLDNavigationController alloc]initWithRootViewController:[[YLDEssenceViewController alloc]init]] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    
    [self addOneChildViewController:[[YLDNavigationController alloc]initWithRootViewController:[[YLDNewViewController alloc]init]] title:@"最新" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    //中间占位
//    [self addOneChildViewController:[[UIViewController alloc]init]title:nil image:nil selectedImage:nil];
    
    [self addOneChildViewController:[[YLDNavigationController alloc]initWithRootViewController:[[YLDFollowViewController alloc]init]] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    
    [self addOneChildViewController:[[YLDNavigationController alloc]initWithRootViewController:[[YLDMeViewController alloc]init]] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    //更换TabBar
    [self setValue:[[YLDTabBar alloc]init] forKeyPath:@"tabBar"];
    
    
//    UITableViewController * vc0 = [[UITableViewController alloc]init];
//    vc0.view.backgroundColor = [UIColor redColor];
//    vc0.tabBarItem.title = @"精华";
//    vc0.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon@2x"];
//    UIImage * tempImage = [UIImage imageNamed:@"tabBar_essence_click_icon@2x"];
//    UIImage * selectedImage =[tempImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc0.tabBarItem.selectedImage = selectedImage;
  
//    [vc0.tabBarItem setTitleTextAttributes:normlAttrs forState:UIControlStateNormal];
// 
//    [vc0.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    
//    [self addChildViewController:vc0];
//    
//    UIViewController * vc1 = [[UIViewController alloc]init];
//    vc1.view.backgroundColor = [UIColor cyanColor];
//    vc1.tabBarItem.title = @"最新";
//    vc1.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon@2x"];
//    UIImage * tempImage2 = [UIImage imageNamed:@"tabBar_new_click_icon@2x"];
//    UIImage * selectedImage2 = [tempImage2 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc1.tabBarItem.selectedImage = selectedImage2;
//    [vc1.tabBarItem setTitleTextAttributes:normlAttrs forState:UIControlStateNormal];
//    [vc1.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    [self addChildViewController:vc1];
    
//    UITableViewController * vc2 = [[UITableViewController alloc]init];
//    vc2.view.backgroundColor = [UIColor greenColor];
//    vc2.tabBarItem.title = @"关注";
//    vc2.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon@2x"];
//    UIImage * tempImage3 = [UIImage imageNamed:@"tabBar_friendTrends_click_icon@2x"];
//    UIImage * selectedImage3 = [tempImage3 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc2.tabBarItem.selectedImage = selectedImage3;
//    [vc2.tabBarItem setTitleTextAttributes:normlAttrs forState:UIControlStateNormal];
//    [vc2.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    
//    [self addChildViewController:vc2];
//    
//    UIViewController * vc3 = [[UIViewController alloc]init];
//    vc3.view.backgroundColor = [UIColor grayColor];
//    vc3.tabBarItem.title = @"我";
//    vc3.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon@2x"];
//    UIImage * tempImage4 = [UIImage imageNamed:@"tabBar_me_click_icon@2x"];
//    UIImage * seleImage4 = [tempImage4 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc3.tabBarItem.selectedImage = seleImage4;
//    [vc3.tabBarItem setTitleTextAttributes:normlAttrs forState:UIControlStateNormal];
//    [vc3.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//    [self addChildViewController:vc3];

}


//
//-(void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    
//    [self.tabBar addSubview:self.publishButton];
//    
//    for (UIView * subview in self.tabBar.subviews)
//    {
//        if (subview.class == NSClassFromString(@"UITabBarButton")) continue;
////        if (![@"UITabBarButton" isEqualToString:NSStringFromClass(subview.class)]) continue;
//     
//        
//    }
    
    
//    [self publishButton];
    
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        UIButton * pushlishButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        pushlishButton.backgroundColor = [UIColor cyanColor];
//        [pushlishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon@2x"] forState:UIControlStateNormal];
//        [pushlishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon@2x"] forState:UIControlStateHighlighted];
//        //    [pushlishButton sizeToFit];
//        pushlishButton.frame = CGRectMake(0, 0, self.tabBar.frame.size.width / 5, self.tabBar.frame.size.height);
//        pushlishButton.center = CGPointMake(self.tabBar.frame.size.width * 0.5, self.tabBar.frame.size.height * 0.5);
//        [pushlishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
//        [self.tabBar addSubview:pushlishButton];
//    });
   
//
//}


//用来初始化一个子控制器(封装)
-(void)addOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage1
{
    vc.tabBarItem.title = title;
    if (image.length)
    {
        vc.tabBarItem.image = [UIImage imageNamed:image];
        UIImage * tempImage = [UIImage imageNamed:selectedImage1];
        UIImage * selectedImage =[tempImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        vc.tabBarItem.selectedImage = selectedImage;
    }
    
    [self addChildViewController:vc];
}

//#pragma mark - button点击事件
//-(void)publishClick
//{
//    NSLog(@"被点击了");
//}

@end
