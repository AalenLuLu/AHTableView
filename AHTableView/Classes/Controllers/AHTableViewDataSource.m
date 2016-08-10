//
//  AHTableViewDataSource.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "AHTableViewDataSource.h"

#import "AHTableViewSectionData.h"
#import "AHTableViewCellData.h"
#import "AHTableViewCell.h"
#import "AHTableViewCellViewModel.h"

@implementation AHTableViewDataSource

- (instancetype)init
{
	if(self = [super init])
	{
		_viewModels = [[NSMutableDictionary alloc] init];
		_heightCache = [[NSMutableDictionary alloc] init];
	}
	return self;
}

- (void)tableView: (UITableView *)tableView registerClassWithNames: (NSDictionary<NSString *, NSArray<NSString *> *> *)names
{
	if(0 == names.count)
	{
		return;
	}
	NSArray *cellNames = names[@"cell"];
	NSArray *headerFooterNames = names[@"headerfooter"];
	
	[cellNames enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		NSString *cellName = obj;
		Class cellClass = nil;
		if(nil != cellName && (cellClass = NSClassFromString(cellName)))
		{
			[tableView registerClass: cellClass forCellReuseIdentifier: cellName];
		}
	}];
	
	[headerFooterNames enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
		NSString *headerFooterName = obj;
		Class headerFooterClass = nil;
		if(nil != headerFooterName && (headerFooterClass = NSClassFromString(headerFooterName)))
		{
			[tableView registerClass: headerFooterClass forHeaderFooterViewReuseIdentifier: headerFooterName];
		}
	}];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return _data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	AHTableViewSectionData *sectionData = _data[section];
	return sectionData.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	AHTableViewSectionData *section = _data[indexPath.section];
	AHTableViewCellData *cellData = section.items[indexPath.row];
	
	AHTableViewCellViewModel *viewModel = _viewModels[cellData.viewModelName];
	if(nil == viewModel)
	{
		Class viewModelClass = NSClassFromString(cellData.viewModelName);
		viewModel = [[viewModelClass alloc] init];
		_viewModels[cellData.viewModelName] = viewModel;
	}
	viewModel.data = cellData;
	
	AHTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellData.cellName forIndexPath: indexPath];
	cell.viewModel = viewModel;
	CGFloat height = [cell reload];
	NSString *indexKey = [[NSString alloc] initWithFormat: @"%lu - %lu", indexPath.section, indexPath.row];
	_heightCache[indexKey] = @(height);
	
	return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	AHTableViewSectionData *sectionData = _data[section];
	return sectionData.data[@"header"];
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
	AHTableViewSectionData *sectionData = _data[section];
	return sectionData.data[@"footer"];
}

@end
