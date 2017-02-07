//
//  AHTableViewDelegate.m
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import "AHTableViewDelegate.h"

#import "AHTableViewCellItem.h"
#import "AHTableViewProxy.h"

@implementation AHTableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSLog(@"%s--%lu, %lu", __func__, indexPath.section, indexPath.row);
	AHTableViewCellItem *item = [_proxy itemAtIndexPath: indexPath];
	return item.cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	AHTableViewCellItem *item = [_proxy itemAtIndexPath: indexPath];
	[item tableView: tableView didSelectRowAtIndexPath: indexPath];
}

@end
