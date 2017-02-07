//
//  DemoModel.m
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import "DemoModel.h"

#import "AHTableViewSectionItem.h"
#import "DemoCellItem.h"

@implementation DemoModel

- (NSArray<AHTableViewSectionItem *> *)getData
{
	NSMutableArray *cells = [[NSMutableArray alloc] init];
	AHTableViewSectionItem *section = [[AHTableViewSectionItem alloc] init];
	for(int i = 0;i < 8;i++)
	{
		DemoCellItem *cell = [[DemoCellItem alloc] init];
		cell.text = [[NSString alloc] initWithFormat: @"Text %lu", random() % 256];
		[cells addObject: cell];
	}
	section.cells = cells;
	
	return @[section];
}

@end
