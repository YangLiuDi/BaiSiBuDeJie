//
//  YLDMeSquareModel.h
//  百思不得姐
//
//  Created by 千锋 on 16/9/26.
//  Copyright © 2016年 Mabin. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol Tag_List<NSObject>
@end

@protocol Square_List <NSObject>
@end

@class Tag_List,Square_List;
@interface YLDMeSquareModel : JSONModel


@property (nonatomic, strong) NSArray<Tag_List> *tag_list;

@property (nonatomic, strong) NSArray<Square_List> *square_list;


@end
@interface Tag_List : JSONModel

@property (nonatomic, copy) NSString *theme_id;

@property (nonatomic, copy) NSString *theme_name;

@end

@interface Square_List : JSONModel

@property (nonatomic, copy) NSString *iphone;

@property (nonatomic, copy) NSString *market;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *id;

@property (nonatomic, copy) NSString *url;

@property (nonatomic, copy) NSString *ipad;

@property (nonatomic, copy) NSString *android;

@property (nonatomic, copy) NSString *icon;

@end

