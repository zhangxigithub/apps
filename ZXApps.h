//
//  ZXApps.h
//  apps
//
//  Created by zhangxi on 14-1-21.
//  Copyright (c) 2014年 zhangxi. All rights reserved.
//


#define kZXAppsBaseURL [NSURL URLWithString:@"http://zxapi.sinaapp.com/apps"]


#define kZXAppsNotification_DidAppear @"kZXAppsNotification_DidAppear"



@class ZXAppsWebView;

#import <UIKit/UIKit.h>

@interface ZXAppsController : UIViewController<UIWebViewDelegate>
{
    ZXAppsWebView *webView;
}


+(void)show;

@end




@interface ZXAppsWebView : UIWebView

@end
