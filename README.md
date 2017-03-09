# PageMenu-RTL

![ScreenShoot](https://cloud.githubusercontent.com/assets/10268796/23753487/f8d4d798-04d9-11e7-9db5-784dec4b8018.png)

# Description
A fully customizable and flexible paging menu controller built from other view controllers placed inside a scroll view allowing the user to switch between any kind of view controller with an easy tap or swipe gesture similar to what Spotify, Windows Phone, and Instagram use. This is a RTL-edeted version and it is based on the Objective-C version of <a href="https://github.com/uacaps/PageMenu">PageMenu<a/>.

##Customization
For more description about PageMenu, please visit the author's source page:<a href="https://github.com/uacaps/PageMenu">Click here</a>.

#Usage

1.Insert **CAPSPageMenu.h** and **CAPSPageMenu.m** to your project
2.Import **CAPSPageMenu.h** to your main controller
3.Create a property like this:

```
@property (nonatomic) CAPSPageMenu *pageMenu;
```


4.Create your costum viewControllers
5.Insert this Code inside of viewDidLoad(Don't forget to replace DemoOneController, DemoTwoController, DemoThreeControler to your own controllers):

```

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

    //If the viewcontroller total number is X, you should change moveToPage:2 to moveToPage:X-1, so you need just replace **X-1**** to yours
    [_pageMenu moveToPage:2 withAnimated:NO];
    [self.view addSubview:_pageMenu.view];```
    


