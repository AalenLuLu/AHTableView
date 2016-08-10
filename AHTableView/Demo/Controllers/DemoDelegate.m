//
//  DemoDelegate.m
//  AHTableView
//
//  Created by Aalen on 16/8/10.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "DemoDelegate.h"

#import "AHTableViewSectionData.h"
#import "AHTableViewDataSource.h"
#import "AHTableViewHeaderFooterView.h"
#import "AHTableViewHeaderFooterViewModel.h"

@implementation DemoDelegate

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
	AHTableViewDataSource *dataSource = tableView.dataSource;
	AHTableViewSectionData *sectionData = dataSource.data[section];
	Class viewClass = [sectionData headerViewClass];
	if(!viewClass)
	{
		return nil;
	}
	
	NSString *viewName = NSStringFromClass(viewClass);
	
	AHTableViewHeaderFooterView *view = [tableView dequeueReusableHeaderFooterViewWithIdentifier: viewName];
	
	if(!view)
	{
		view = [[viewClass alloc] initWithReuseIdentifier: viewName];
	}
	
	Class viewModelClass = [sectionData headerViewModelClass];
	
	NSString *viewModelName = NSStringFromClass(viewModelClass);
	
	AHTableViewHeaderFooterViewModel *viewModel = dataSource.viewModels[viewModelName];
	if(nil == viewModel)
	{
		viewModel = [[[sectionData headerViewModelClass] alloc] init];
		dataSource.viewModels[viewModelName] = viewModel;
	}
	viewModel.data = sectionData;
	
	view.viewModel = viewModel;
	[view reload];
	return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
	return 22.0;
}

@end
