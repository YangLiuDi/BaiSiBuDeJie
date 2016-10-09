//
//  UIView+YLDExtension.m
//  Best not elder sister
//
//  Created by 千锋 on 16/8/18.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "UIView+YLDExtension.h"

@implementation UIView (YLDExtension)

-(void)setYld_width:(CGFloat)yld_width
{
    CGRect frame = self.frame;
    frame.size.width = yld_width;
    self.frame = frame;
}
-(CGFloat)yld_width
{
    return self.frame.size.width;
}

-(void)setYld_height:(CGFloat)yld_height
{
    CGRect frame = self.frame;
    frame.size.height = yld_height;
    self.frame = frame;
}

-(CGFloat)yld_height
{
    return self.frame.size.height;
}

-(CGFloat)yld_x
{
    return self.frame.origin.x;
}

-(void)setYld_x:(CGFloat)yld_x
{
    CGRect frame = self.frame;
    frame.origin.x = yld_x;
    self.frame = frame;
}

-(CGFloat)yld_y
{
    return self.frame.origin.y;
}

-(void)setYld_y:(CGFloat)yld_y
{
    CGRect frame = self.frame;
    frame.origin.y = yld_y;
    self.frame = frame;
}

-(CGFloat)yld_centerX
{
    return self.center.x;
}

-(void)setYld_centerX:(CGFloat)yld_centerX
{
    CGPoint center = self.center;
    center.x = yld_centerX;
    self.center = center;
}

-(CGFloat)yld_centerY
{
    return self.center.y;
}

-(void)setYld_centerY:(CGFloat)yld_centerY
{
    CGPoint center = self.center;
    center.y = yld_centerY;
    self.center = center;
}

@end
