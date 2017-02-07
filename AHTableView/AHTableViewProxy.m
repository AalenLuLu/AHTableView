//
//  AHTableViewProxy.m
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import "AHTableViewProxy.h"

#import "AHTableViewDataSource.h"
#import "AHTableViewDelegate.h"
#import "AHTableViewSectionItem.h"
#import "AHTableViewCellItem.h"

@interface AHTableViewProxy ()

@property (strong, nonatomic) NSMutableArray<AHTableViewSectionItem *> *sections;

@end

@implementation AHTableViewProxy

- (instancetype)initWithTableView:(UITableView *)tableView dataSource:(AHTableViewDataSource *)dataSource delegate:(AHTableViewDelegate *)delegate
{
	if(self = [super init])
	{
		_tableView = tableView;
		_dataSource = dataSource;
		_delegate = delegate;
		_tableView.dataSource = _dataSource;
		_tableView.delegate = _delegate;
		_dataSource.proxy = self;
		_delegate.proxy = self;
		
		_sections = [[NSMutableArray alloc] init];
	}
	return self;
}

- (void)setDisplayData:(NSArray<AHTableViewSectionItem *> *)displayData
{
	[_sections removeAllObjects];
	[_sections addObjectsFromArray: displayData];
	[_tableView reloadData];
}

- (NSArray<AHTableViewSectionItem *> *)displayData
{
	return _sections;
}

- (AHTableViewSectionItem *)sectionAtIndex:(NSUInteger)index
{
	if(index < _sections.count)
	{
		return _sections[index];
	}
	return nil;
}

- (AHTableViewCellItem *)itemAtIndexPath:(NSIndexPath *)indexPath
{
	if(0 <= indexPath.section && indexPath.section < _sections.count)
	{
		AHTableViewSectionItem *section = _sections[indexPath.section];
		if(0 <= indexPath.row && indexPath.row < section.cells.count)
		{
			return section.cells[indexPath.row];
		}
	}
	return nil;
}

@end
