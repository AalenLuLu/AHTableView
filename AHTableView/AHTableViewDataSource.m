//
//  AHTableViewDataSource.m
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import "AHTableViewDataSource.h"

#import "AHTableViewSectionItem.h"
#import "AHTableViewCellItem.h"
#import "AHTableViewCell.h"
#import "AHTableViewProxy.h"

@implementation AHTableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return [_proxy displayData].count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [_proxy sectionAtIndex: section].cells.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"%s--%lu, %lu", __func__, indexPath.section, indexPath.row);
	AHTableViewCellItem *cellItem = [_proxy itemAtIndexPath: indexPath];
	NSString *cellClassName = NSStringFromClass([cellItem classForCell]);
	AHTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellClassName];
	if(!cell)
	{
		cell = [((AHTableViewCell *)[[cellItem classForCell] alloc]) initWithStyle: UITableViewCellStyleDefault reuseIdentifier: cellClassName];
	}
	cell.item = cellItem;
	[cell reload];
	return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	AHTableViewSectionItem *sectionItem = [_proxy sectionAtIndex: section];
	if(nil == [sectionItem classForHeader] && nil != sectionItem.titleForHeader)
	{
		return sectionItem.titleForHeader;
	}
	return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
	AHTableViewSectionItem *sectionItem = [_proxy sectionAtIndex: section];
	if(nil == [sectionItem classForFooter] && nil != sectionItem.titleForFooter)
	{
		return sectionItem.titleForFooter;
	}
	return nil;
}

@end
