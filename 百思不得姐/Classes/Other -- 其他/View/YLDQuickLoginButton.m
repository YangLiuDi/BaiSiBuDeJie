//
//  YLDQuickLoginButton.m
//  百思不得姐
//
//  Created by 千锋 on 16/8/22.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "YLDQuickLoginButton.h"

@implementation YLDQuickLoginButton

-(void)awakeFromNib
{
//    self.backgroundColor = [UIColor blueColor];
//    self.imageView.backgroundColor = [UIColor redColor];
//    self.titleLabel.backgroundColor = [UIColor greenColor];
    self.titleLabel.textAlignment = NSTextAlignmentCenter ;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.imageView.yld_y = 0;
    self.imageView.yld_centerX = self.yld_width * 0.5;
    self.titleLabel.yld_x = 0;
    self.titleLabel.yld_y = self.imageView.yld_height;
    self.titleLabel.yld_width = self.yld_width;
    self.titleLabel.yld_height = self.yld_height - self.titleLabel.yld_y;
}

@end
