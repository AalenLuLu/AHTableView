//
//  DemoCellViewModel.m
//  AHTableView
//
//  Created by Aalen on 16/8/10.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "DemoCellViewModel.h"

#import "DemoCell.h"
#import "AHTableViewCellData.h"

@implementation DemoCellViewModel

- (void)reloadDataWithCell:(AHTableViewCell *)cell
{
	DemoCell *realCell = (DemoCell *)cell;
	if(nil != self.data.data[@"avatar"])
	{
		realCell.avatarImageView.image = [UIImage imageNamed: self.data.data[@"avatar"]];
	}
	realCell.titleLabel.text = self.data.data[@"title"];
	realCell.descriptionLabel.text = self.data.data[@"description"];
	
	if(realCell.avatarImageView.image)
	{
		realCell.avatarImageView.hidden = NO;
	}
	else
	{
		realCell.avatarImageView.hidden = YES;
	}
	if(realCell.titleLabel.text)
	{
		realCell.titleLabel.hidden = NO;
	}
	else
	{
		realCell.titleLabel.hidden = YES;
	}
	if(realCell.descriptionLabel.text)
	{
		realCell.descriptionLabel.hidden = NO;
	}
	else
	{
		realCell.descriptionLabel.hidden = YES;
	}
}

- (void)layoutWithCell:(AHTableViewCell *)cell
{
	DemoCell *realCell = (DemoCell *)cell;
	CGFloat startX = 8.0;
	CGFloat startY = 8.0;
	CGFloat height = startY;
	if(!realCell.avatarImageView.hidden)
	{
		CGSize imageSize = realCell.avatarImageView.image.size;
		realCell.avatarImageView.frame = CGRectMake(startX, startY, 100.0 < imageSize.width ? 100.0 : imageSize.width, 100.0 < imageSize.height ? 100.0 : imageSize.height);
		height += realCell.avatarImageView.frame.size.height;
	}
	if(!realCell.titleLabel.hidden)
	{
		CGRect rect = [realCell.titleLabel.text boundingRectWithSize: CGSizeMake(cell.contentView.bounds.size.width - CGRectGetMaxX(realCell.avatarImageView.frame) - 8.0 - 8.0, 22.0) options: NSStringDrawingUsesLineFragmentOrigin attributes: @{NSFontAttributeName: realCell.titleLabel.font} context: nil];
		CGRect frame = CGRectMake(CGRectGetMaxX(realCell.avatarImageView.frame) + 8.0, startY, rect.size.width, rect.size.height);
		realCell.titleLabel.frame = frame;
		height = height < CGRectGetMaxY(realCell.titleLabel.frame) ? CGRectGetMaxY(realCell.titleLabel.frame) : height;
	}
	if(!realCell.descriptionLabel.hidden)
	{
		CGRect rect = [realCell.descriptionLabel.text boundingRectWithSize: CGSizeMake(cell.contentView.bounds.size.width - CGRectGetMaxX(realCell.avatarImageView.frame) - 8.0 - 8.0, MAXFLOAT) options: NSStringDrawingUsesLineFragmentOrigin attributes: @{NSFontAttributeName: realCell.descriptionLabel.font} context: nil];
		CGRect frame = CGRectMake(CGRectGetMaxX(realCell.avatarImageView.frame) + 8.0, startY + realCell.titleLabel.frame.size.height, rect.size.width, rect.size.height);
		realCell.descriptionLabel.frame = frame;
		height = height < CGRectGetMaxY(realCell.descriptionLabel.frame) ? CGRectGetMaxY(realCell.descriptionLabel.frame) : height;
	}
	height += 8.0;
	self.height = 44.0 < height ? height : 44.0;
}

@end
