//
//  YLDWebViewController.m
//  百思不得姐
//
//  Created by 千锋 on 16/9/27.
//  Copyright © 2016年 Mabin. All rights reserved.
//

#import "YLDWebViewController.h"

@interface YLDWebViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backItem;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *forwardItem;

@end

@implementation YLDWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]]];
}

#pragma mark - 监听item的点击

- (IBAction)reload
{
    [self.webView reload];
}
- (IBAction)back
{
    [self.webView goBack];
}
- (IBAction)forward
{
    [self.webView goForward];
}

#pragma mark - webView代理方法
//加载完
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    self.backItem.enabled = webView.canGoBack;
    self.forwardItem.enabled = webView.canGoForward;
}

@end
