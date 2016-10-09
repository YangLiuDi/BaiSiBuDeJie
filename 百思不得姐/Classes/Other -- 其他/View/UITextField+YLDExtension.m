//
//  UITextField+YLDExtension.m
//  百思不得姐
//
//  Created by 千锋 on 16/9/7.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "UITextField+YLDExtension.h"

@implementation UITextField (YLDExtension)

-(void)setPlaceholderColor:(UIColor *)placeholderColor
{
    //因为现在这个placeholderLabel 是懒加载创建的,只有给它设置文字,并且文字的程度lenght大于0,它才会被创建,如果先给占位文字设置颜色然后再设置文字的话,是设置不上去的,因为这个placeholderLabel就不存在,所以我们先让placeholderLabel这个控件创建出来
    NSString * oldPlaceholder = self.placeholder;
    self.placeholder = @" ";
    self.placeholder = oldPlaceholder;
    
    //恢复到默认的占位颜色（如果有人设置的颜色为nil,那么就自动给它转换成为默认的占位颜色）
    if (placeholderColor == nil)
    {
        placeholderColor = [UIColor colorWithRed:0 green:0 blue:0.0980392 alpha:0.22];
    }
    
    //真正设置占位颜色
    [self setValue:placeholderColor forKeyPath:@"placeholderLabel.textColor"];
}

-(UIColor *)placeholderColor
{
    return [self valueForKeyPath:@"placeholderLabel.textColor"];
}

@end
