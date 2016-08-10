//
//  DemoHeaderViewModel.m
//  AHTableView
//
//  Created by Aalen on 16/8/10.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "DemoHeaderViewModel.h"

#import "AHTableViewSectionData.h"
#import "DemoHeaderView.h"

@implementation DemoHeaderViewModel

- (void)reloadDataWithHeaderFooterView:(AHTableViewHeaderFooterView *)headerFooterView
{
	DemoHeaderView *headerView = (DemoHeaderView *)headerFooterView;
	headerView.descriptionLabel.text = self.data.data[@"header"];
	
	if(headerView.descriptionLabel.text)
	{
		headerView.detailTextLabel.hidden = NO;
	}
	else
	{
		headerView.descriptionLabel.hidden = YES;
	}
}

- (void)layoutWithHeaderFooterView:(AHTableViewHeaderFooterView *)headerFooterView
{
	DemoHeaderView *headerView = (DemoHeaderView *)headerFooterView;
	if(!headerView.descriptionLabel.hidden)
	{
		CGRect rect = [headerView.descriptionLabel.text boundingRectWithSize: CGSizeMake(headerView.bounds.size.width - 16.0, 22.0) options: NSStringDrawingUsesLineFragmentOrigin attributes: @{NSFontAttributeName: headerView.descriptionLabel.font} context: nil];
		headerView.descriptionLabel.frame = CGRectMake(8.0, 0, rect.size.width, 22.0);
	}
	self.height = 22.0;
}

@end
