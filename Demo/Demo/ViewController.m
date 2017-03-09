//
//  ViewController.m
//  Demo
//
//  Created by UyghurbegPro on 17/3/9.
//  Copyright © 2017年 BG. All rights reserved.
//

#import "ViewController.h"
#import "CAPSPageMenu.h"
#import "demoTwoViewController.h"
#import "DemoOneController.h"
#import "demoThreeViewController.h"

@interface ViewController ()<CAPSPageMenuDelegate>

@property (nonatomic) CAPSPageMenu *pageMenu;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DemoOneController *controller1 = [[DemoOneController alloc] init];
    controller1.title = @"باشبەت";

    
    demoTwoViewController *controller2 = [[demoTwoViewController alloc] init];
    controller2.title = @"مەسلىھەت";
    
    demoThreeViewController *controller3 = [[demoThreeViewController alloc] init];
    controller3.title = @"تەجرىبە";
    
    
    NSArray *controllerArray = @[controller3,controller2,controller1];
    NSDictionary *parameters = @{
                                 CAPSPageMenuOptionScrollMenuBackgroundColor: [UIColor whiteColor],
                                 CAPSPageMenuOptionSelectedMenuItemLabelColor: [UIColor blueColor],CAPSPageMenuOptionUnselectedMenuItemLabelColor:[UIColor colorWithRed:0.20 green:0.20 blue:0.20 alpha:1.00],
                                 CAPSPageMenuOptionViewBackgroundColor: [UIColor whiteColor],
                                 CAPSPageMenuOptionSelectionIndicatorColor: [UIColor blueColor],
                                 CAPSPageMenuOptionBottomMenuHairlineColor: [UIColor whiteColor],
                                 CAPSPageMenuOptionMenuItemFont: [UIFont systemFontOfSize:18],
                                 CAPSPageMenuOptionMenuHeight: @(40.0),
                                 CAPSPageMenuOptionMenuItemWidth: @(70.0),
                                 CAPSPageMenuOptionCenterMenuItems: @(YES),
                                 };
    
    _pageMenu = [[CAPSPageMenu alloc] initWithViewControllers:controllerArray frame:CGRectMake(0.0, 64, self.view.frame.size.width, self.view.frame.size.height) options:parameters];
    
    _pageMenu.delegate = self;
    
    //If the viewcontroller total number is X, you should change moveToPage:2 to moveToPage:X-1
    [_pageMenu moveToPage:2 withAnimated:NO];
    [self.view addSubview:_pageMenu.view];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
