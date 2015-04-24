//
//  SJSlideViewController2.h
//  SJSlideTableView
//
//  Created by Soldier on 15/4/24.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SJSlideSwitchView.h"
#import "SJTableViewController2.h"

@interface SJSlideViewController2 : UIViewController <SJSlideSwitchViewDelegate>//UITableViewController

@property (nonatomic, strong) SJSlideSwitchView *slideSwitchView;
@property (nonatomic, strong) SJTableViewController2 *vc1;
@property (nonatomic, strong) SJTableViewController2 *vc2;
@property (nonatomic, strong) SJTableViewController2 *vc3;
@property (nonatomic, strong) SJTableViewController2 *vc4;
@property (nonatomic, strong) SJTableViewController2 *vc5;
@property (nonatomic, strong) SJTableViewController2 *vc6;

@end
