//
//  ViewController.m
//  apps
//
//  Created by zhangxi on 14-1-21.
//  Copyright (c) 2014年 zhangxi. All rights reserved.
//

#import "ViewController.h"
#import "ZXApps.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [ZXAppsController show];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
