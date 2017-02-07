//
//  DemoCellItem.m
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import "DemoCellItem.h"

@implementation DemoCellItem

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath: indexPath animated: YES];
}

- (Class)classForCell
{
	return NSClassFromString(@"DemoCell");
}

@end
