//
//  YLDMeSquareButton.m
//  百思不得姐
//
//  Created by 千锋 on 16/9/27.
//  Copyright © 2016年 Mabin. All rights reserved.
//

#import "YLDMeSquareButton.h"
#import "YLDMeSquareModel.h"
#import <UIButton+WebCache.h>

@implementation YLDMeSquareButton

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:15];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setBackgroundImage:[UIImage imageNamed:@"mainCellBackground"] forState:UIControlStateNormal];
    }
    return self;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    self.imageView.yld_y = self.yld_height * 0.1;
    self.imageView.yld_height = self.yld_height * 0.5;
    self.imageView.yld_width = self.imageView.yld_height;
    self.imageView.yld_centerX = self.yld_width * 0.5;
    
    self.titleLabel.yld_x = 0;
    self.titleLabel.yld_y = self.imageView.yld_height + self.imageView.yld_y;
    self.titleLabel.yld_width = self.yld_width;
    self.titleLabel.yld_height = self.yld_height - self.titleLabel.yld_y;
}

-(void)setSquare:(Square_List *)square
{
    _square = square;
    
    [self setTitle:square.name forState:UIControlStateNormal];
    [self sd_setImageWithURL:[NSURL URLWithString:square.icon] forState:UIControlStateNormal placeholderImage:[UIImage imageNamed:@"setup-head-default"]];
}

@end
