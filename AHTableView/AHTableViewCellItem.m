//
//  AHTableViewCellItem.m
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import "AHTableViewCellItem.h"

@implementation AHTableViewCellItem

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	
}

- (Class)classForCell
{
	return nil;
}

- (CGFloat)cellHeight
{
	return 44.0 > _cellHeight ? 44.0 : _cellHeight;
}

@end
