//
//  DemoCell.m
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import "DemoCell.h"

#import "DemoCellItem.h"

@implementation DemoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
	if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
	{
		self.contentView.backgroundColor = [UIColor redColor];
		self.textLabel.textColor = [UIColor whiteColor];
	}
	return self;
}

- (void)reload
{
	DemoCellItem *item = (DemoCellItem *)self.item;
	self.textLabel.text = item.text;
	self.item.cellHeight = 50.0;
}

@end
