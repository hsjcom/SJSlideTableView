//
//  SJTableViewController2.m
//  SJSlideTableView
//
//  Created by Soldier on 15/4/24.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "SJTableViewController2.h"

@interface SJTableViewController2 ()

@end

@implementation SJTableViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIImageView *heardView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 180)];
    heardView.backgroundColor = [UIColor orangeColor];
    self.tableView.tableHeaderView = heardView;
}

@end
