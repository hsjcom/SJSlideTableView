//
//  SJSlideViewController2.m
//  SJSlideTableView
//
//  Created by Soldier on 15/4/24.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "SJSlideViewController2.h"

@interface SJSlideViewController2 ()

@end


@implementation SJSlideViewController2

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
    
   
    
    [self initSubViewController];
    
    [self.slideSwitchView buildUI];
    
    self.slideSwitchView.rootScrollView.frame = CGRectMake(self.slideSwitchView.rootScrollView.frame.origin.x, 0, self.slideSwitchView.rootScrollView.frame.size.width, self.slideSwitchView.rootScrollView.frame.size.height);
    
    self.slideSwitchView.topScrollView.backgroundColor = [UIColor whiteColor];
    self.slideSwitchView.topScrollView.frame = CGRectMake(self.slideSwitchView.topScrollView.frame.origin.x, 180, self.slideSwitchView.topScrollView.frame.size.width, self.slideSwitchView.topScrollView.frame.size.height);
    
    [self.vc1.tableView.tableHeaderView addSubview:self.slideSwitchView.topScrollView];
    [self.vc2.tableView.tableHeaderView addSubview:self.slideSwitchView.topScrollView];
}

- (void)initSubViewController{
    self.vc1 = [[SJTableViewController2 alloc] init];
    self.vc1.title = @"soldier1";
    
    self.vc2 = [[SJTableViewController2 alloc] init];
    self.vc2.title = @"soldier2";
    
    self.vc3 = [[SJTableViewController2 alloc] init];
    self.vc3.title = @"soldier3";
    
    self.vc4 = [[SJTableViewController2 alloc] init];
    self.vc4.title = @"soldier4";
    
    self.vc5 = [[SJTableViewController2 alloc] init];
    self.vc5.title = @"soldier5";
    
    self.vc6 = [[SJTableViewController2 alloc] init];
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
