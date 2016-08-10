//
//  AHTableViewCellViewModel.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "AHTableViewCellViewModel.h"

#import "AHTableViewCell.h"
#import "AHTableViewCellData.h"

@implementation AHTableViewCellViewModel

- (void)reloadDataWithCell:(AHTableViewCell *)cell
{
	cell.textLabel.text = _data.data[@"text"];
}

- (void)layoutWithCell:(AHTableViewCell *)cell
{
	_height = 44.0;
}

@end
