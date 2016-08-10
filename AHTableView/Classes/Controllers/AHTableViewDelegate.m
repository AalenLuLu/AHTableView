//
//  AHTableViewDelegate.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "AHTableViewDelegate.h"

#import "AHTableViewCellData.h"
#import "AHTableViewSectionData.h"
#import "AHTableViewDataSource.h"

@implementation AHTableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath: indexPath animated: YES];
	AHTableViewDataSource *dataSource = tableView.dataSource;
	AHTableViewSectionData *section = dataSource.data[indexPath.section];
	AHTableViewCellData *model = section.items[indexPath.row];
	if(model.didSelectCellAction)
	{
		model.didSelectCellAction(tableView, indexPath);
	}
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	AHTableViewDataSource *dataSource = tableView.dataSource;
	NSString *indexKey = [[NSString alloc] initWithFormat: @"%lu - %lu", indexPath.section, indexPath.row];
	if(nil == dataSource.heightCache[indexKey])
	{
		//default 44 or calculate from view model...
		return 44.0;
	}
	
	return [dataSource.heightCache[indexKey] doubleValue];
}

@end
