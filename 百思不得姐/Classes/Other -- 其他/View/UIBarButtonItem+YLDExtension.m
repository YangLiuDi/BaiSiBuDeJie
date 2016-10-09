//
//  UIBarButtonItem+YLDExtension.m
//  百思不得姐
//
//  Created by 千锋 on 16/9/18.
//  Copyright © 2016年 Mabin. All rights reserved.
//

#import "UIBarButtonItem+YLDExtension.h"

@implementation UIBarButtonItem (YLDExtension)

+(instancetype)itemWithImage:(NSString *)image hightImage:(NSString *)hightImage target:(id)target action:(SEL)action
{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    [button sizeToFit];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return[[self alloc]initWithCustomView:button];;
}

@end
