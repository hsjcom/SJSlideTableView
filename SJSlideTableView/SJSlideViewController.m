//
//  SJSlideViewController.m
//  SJSlideTableView
//
//  Created by Soldier on 15/4/23.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "SJSlideViewController.h"
#import "SJTableViewController.h"

@interface SJSlideViewController ()

@end


@implementation SJSlideViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"滑动切换视图";
    self.view.backgroundColor = [UIColor whiteColor];
    
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    [self initSlideSwitch];
}

- (void)initSlideSwitch {
    _slideSwitchView = [[SJSlideSwitchView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, self.view.bounds.size.height + kHeightOfTopScrollView)];
    
    _slideSwitchView.slideSwitchViewDelegate = self;
    [self.view addSubview:_slideSwitchView];

    self.slideSwitchView.tabItemNormalColor = [UIColor grayColor];
    self.slideSwitchView.tabItemSelectedColor = [UIColor orangeColor];
    self.slideSwitchView.shadowImage = [UIImage imageNamed:@"yellowBar"];
    
    UIButton *rightSideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightSideButton setImage:[UIImage imageNamed:@"rightGrayAccessory"] forState:UIControlStateNormal];
    [rightSideButton setImage:[UIImage imageNamed:@"rightGrayAccessory"]  forState:UIControlStateHighlighted];
    rightSideButton.frame = CGRectMake(0, 0, 20.0f, 44.0f);
    rightSideButton.userInteractionEnabled = NO;
    self.slideSwitchView.rigthSideButton = rightSideButton;
    
    [self initSubViewController];
    
    [self.slideSwitchView buildUI];
}

- (void)initSubViewController{
    self.vc1 = [[SJTableViewController alloc] init];
    self.vc1.title = @"soldier1";
    
    self.vc2 = [[SJTableViewController alloc] init];
    self.vc2.title = @"soldier2";
    
    self.vc3 = [[SJTableViewController alloc] init];
    self.vc3.title = @"soldier3";
    
    self.vc4 = [[SJTableViewController alloc] init];
    self.vc4.title = @"soldier4";
    
    self.vc5 = [[SJTableViewController alloc] init];
    self.vc5.title = @"soldier5";
    
    self.vc6 = [[SJTableViewController alloc] init];
    self.vc6.title = @"soldier6";
}

#pragma mark - QCSlideSwitchViewDelegate

- (NSUInteger)numberOfTab:(SJSlideSwitchView *)view {
    return 6;
}

- (UIViewController *)slideSwitchView:(SJSlideSwitchView *)view viewOfTab:(NSUInteger)number {
    if (number == 0) {
        return self.vc1;
    } else if (number == 1) {
        return self.vc2;
    } else if (number == 2) {
        return self.vc3;
    } else if (number == 3) {
        return self.vc4;
    } else if (number == 4) {
        return self.vc5;
    } else if (number == 5) {
        return self.vc6;
    } else {
        return nil;
    }
}

- (void)slideSwitchView:(SJSlideSwitchView *)view didselectTab:(NSUInteger)number {
    SJTableViewController *vc = nil;
    if (number == 0) {
        vc = self.vc1;
    } else if (number == 1) {
        vc = self.vc2;
    } else if (number == 2) {
        vc = self.vc3;
    } else if (number == 3) {
        vc = self.vc4;
    } else if (number == 4) {
        vc = self.vc5;
    } else if (number == 5) {
        vc = self.vc6;
    }
    [vc viewDidCurrentView];
}

@end
