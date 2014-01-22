//
//  ZXApps.m
//  apps
//
//  Created by zhangxi on 14-1-21.
//  Copyright (c) 2014年 zhangxi. All rights reserved.
//

#import "ZXApps.h"

@implementation ZXAppsController

+(void)show
{
    UIViewController *vc = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    ZXAppsController *apps  = [[ZXAppsController alloc] init];
    [vc presentViewController:apps
                     animated:YES
                   completion:^{
                       [[NSNotificationCenter defaultCenter] postNotificationName:kZXAppsNotification_DidAppear
                                                                           object:nil];
                   }];
}


-(void)loadView
{
    [super loadView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    webView = [[ZXAppsWebView alloc] init];
    webView.backgroundColor = [UIColor whiteColor];
    
    CGRect frame = self.view.bounds;
    
    if([[[UIDevice currentDevice]systemVersion] floatValue] >= 7.0)
    {
        frame.origin.y = 20;
        frame.size.height -= 20;
    }
    

    webView.frame = frame;
    
    
    webView.delegate = self;
    [self.view addSubview:webView];
    
    //--
    
    
    
    
    //--
    
    NSURLRequest *request = [NSURLRequest requestWithURL:kZXAppsBaseURL];
    [webView loadRequest:request];
}

//////////////////////////////////////////////////

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
}

//////////////////////////////////////////////////

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end





@implementation ZXAppsWebView


@end