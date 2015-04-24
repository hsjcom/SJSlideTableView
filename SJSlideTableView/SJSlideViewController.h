//
//  SJSlideViewController.h
//  SJSlideTableView
//
//  Created by Soldier on 15/4/23.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SJSlideSwitchView.h"
#import "SJTableViewController.h"

@interface SJSlideViewController : UIViewController <SJSlideSwitchViewDelegate>

@property (nonatomic, strong) SJSlideSwitchView *slideSwitchView;
@property (nonatomic, strong) SJTableViewController *vc1;
@property (nonatomic, strong) SJTableViewController *vc2;
@property (nonatomic, strong) SJTableViewController *vc3;
@property (nonatomic, strong) SJTableViewController *vc4;
@property (nonatomic, strong) SJTableViewController *vc5;
@property (nonatomic, strong) SJTableViewController *vc6;

@end
