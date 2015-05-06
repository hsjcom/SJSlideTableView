//
//  ViewController.m
//  SJSlideTableView
//
//  Created by Soldier on 15/4/23.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "ViewController.h"
#import "SJSlideViewController.h"
#import "SJSlideViewController2.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"I am soldier";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(self.view.frame.size.width * 0.5 - 60 * 0.5, 100, 60, 30);
    [btn setTitle:@"gOgO" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(self.view.frame.size.width * 0.5 - 60 * 0.5, 160, 60, 30);
    [btn2 setTitle:@"GoGo" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(gogo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}

- (void)go {
    SJSlideViewController *slideViewController = [[SJSlideViewController alloc] init];
    [self.navigationController pushViewController:slideViewController animated:YES];
}

- (void)gogo {
    SJSlideViewController2 *slideViewController2 = [[SJSlideViewController2 alloc] init];
    [self.navigationController pushViewController:slideViewController2 animated:YES];
}


@end
