//
//  ViewController.m
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import "ViewController.h"

#import "AHTableViewProxy.h"
#import "AHTableViewDataSource.h"
#import "AHTableViewDelegate.h"
#import "DemoModel.h"

@interface ViewController ()

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) AHTableViewProxy *proxy;
@property (strong, nonatomic) AHTableViewDataSource *dataSource;
@property (strong, nonatomic) AHTableViewDelegate *delegate;

@property (strong, nonatomic) DemoModel *model;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[self.view addSubview: self.tableView];
	_dataSource = [[AHTableViewDataSource alloc] init];
	_delegate = [[AHTableViewDelegate alloc] init];
	_proxy = [[AHTableViewProxy alloc] initWithTableView: _tableView dataSource: _dataSource delegate: _delegate];
	_model = [[DemoModel alloc] init];
	[_proxy setDisplayData: [_model getData]];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (UITableView *)tableView
{
	if(nil == _tableView)
	{
		_tableView = [[UITableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
	}
	return _tableView;
}

@end
