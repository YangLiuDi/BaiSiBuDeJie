//
//  YLDLoginRegisterTextField.m
//  百思不得姐
//
//  Created by 千锋 on 16/9/2.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDLoginRegisterTextField.h"

@implementation YLDLoginRegisterTextField

-(void)awakeFromNib
{
    //设置光标颜色
    self.tintColor = [UIColor whiteColor];
    //设置占位文字颜色
    self.placeholderColor = [UIColor grayColor];
 }

-(BOOL)becomeFirstResponder
{
    self.placeholderColor = [UIColor whiteColor];
    return [super becomeFirstResponder];
}


-(BOOL)resignFirstResponder
{
    self.placeholderColor = [UIColor grayColor];
    return [super resignFirstResponder];
}
@end
