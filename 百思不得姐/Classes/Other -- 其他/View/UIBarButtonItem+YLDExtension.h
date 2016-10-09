//
//  UIBarButtonItem+YLDExtension.h
//  百思不得姐
//
//  Created by 千锋 on 16/9/18.
//  Copyright © 2016年 Mabin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YLDExtension)
+(UIBarButtonItem *)itemWithImage:(NSString *)image hightImage:(NSString *)hightImage target:(id)target action:(SEL)action;
@end
