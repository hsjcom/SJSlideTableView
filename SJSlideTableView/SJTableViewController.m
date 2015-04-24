//
//  SJTableViewController.m
//  SJSlideTableView
//
//  Created by Soldier on 15/4/23.
//  Copyright (c) 2015年 Soldier. All rights reserved.
//

#import "SJTableViewController.h"

@interface SJTableViewController ()

@end

@implementation SJTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *ListViewCellId = @"ListViewCellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ListViewCellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ListViewCellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@ 第 %ld 行", self.title, indexPath.row];
    
    return  cell;
}

- (void)viewDidCurrentView {
    NSLog(@"当前视图 = %@", self.title);
}

@end
