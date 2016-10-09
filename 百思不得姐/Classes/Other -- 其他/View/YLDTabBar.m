//
//  YLDTabBar.m
//  Best not elder sister
//
//  Created by 千锋 on 16/8/18.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDTabBar.h"

@interface YLDTabBar()

@property(weak,nonatomic)UIButton * publishButton;

@end

@implementation YLDTabBar

#pragma mark - 懒加载
-(UIButton *)publishButton
{
    if (!_publishButton)
    {
        UIButton * publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
      
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        //    [pushlishButton sizeToFit];
        [publishButton addTarget:self action:@selector(publishClick) forControlEvents:UIControlEventTouchUpInside];
//        [self.tabBar addSubview:_publishButton];
//        _publishButton = pushlishButton;
        [self addSubview:publishButton];
        _publishButton = publishButton;
    }
    return _publishButton;
}


#pragma mark - 初始化
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
    }
    return self;
}



//布局子控件
//先让父类先布局，等他布局完之后,我在修改她的位置
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    //设置所有UITabBarItem的frame
    //按钮的尺寸
    CGFloat buttonW = self.yld_width / 5;
    CGFloat buttonH = self.yld_height;
//    CGFloat buttonW = self.frame.size.width / 5;
//    CGFloat buttonH = self.frame.size.height;
    CGFloat tabBarbuttonY = 0;
    //按钮索引
    int tabBarbuttonIndex = 0;
    
    for (UIView * subview in self.subviews)
    {
        //过滤掉非UITabBarButton
        if (subview.class != NSClassFromString(@"UITabBarButton")) continue;
        //设置frame
        CGFloat tabBarbuttonX = buttonW * tabBarbuttonIndex;
        if (tabBarbuttonIndex >= 2)
        {
            //右边两个按钮
            tabBarbuttonX += buttonW;
        }
        subview.frame = CGRectMake(tabBarbuttonX, tabBarbuttonY, buttonW, buttonH);
        //增加索引
        tabBarbuttonIndex ++;
    }
    
    //设置中间的发布按钮的frame
    self.publishButton.yld_width = buttonW;
    self.publishButton.yld_height = buttonH;
    self.publishButton.yld_centerX = self.yld_width * 0.5;
    self.publishButton.yld_centerY = self.yld_height * 0.5;
    
//    self.publishButton.frame = CGRectMake(0, 0, buttonW, buttonH);
//    self.publishButton.center = CGPointMake(self.yld_width * 0.5, self.yld_height * 0.5);
    
}


#pragma mark - button点击事件
-(void)publishClick
{
    NSLog(@"被点击了");
}

@end
