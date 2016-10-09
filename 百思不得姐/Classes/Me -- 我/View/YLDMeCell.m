//
//  YLDMeCell.m
//  百思不得姐
//
//  Created by 千锋 on 16/9/18.
//  Copyright © 2016年 Mabin. All rights reserved.
//

#import "YLDMeCell.h"

@implementation YLDMeCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        //能看到图片的全部
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        self.textLabel.textColor = [UIColor darkGrayColor];
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        self.backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"mainCellBackground"]];
    }
    return self;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    if (self.imageView.image == nil)
    {
        return;
    }
    else
    {
        self.imageView.yld_y = YLDSmallMargin;
        self.imageView.yld_height = self.contentView.yld_height - 2 * YLDSmallMargin;
        
        self.textLabel.yld_x = self.imageView.yld_x + self.imageView.yld_width + YLDMargin;
    }
}

@end
