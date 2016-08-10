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
	if(nil != _data.data[@"avatar"])
	{
		cell.avatarImageView.image = [UIImage imageNamed: _data.data[@"avatar"]];
	}
	cell.titleLabel.text = _data.data[@"title"];
	cell.descriptionLabel.text = _data.data[@"description"];
}

- (void)layoutWithCell:(AHTableViewCell *)cell
{
	CGFloat startX = 8.0;
	CGFloat startY = 8.0;
	CGFloat height = startY;
	if(!cell.avatarImageView.hidden)
	{
		CGSize imageSize = cell.avatarImageView.image.size;
		cell.avatarImageView.frame = CGRectMake(startX, startY, 100.0 < imageSize.width ? 100.0 : imageSize.width, 100.0 < imageSize.height ? 100.0 : imageSize.height);
		height += cell.avatarImageView.frame.size.height;
	}
	if(!cell.titleLabel.hidden)
	{
		CGRect rect = [cell.titleLabel.text boundingRectWithSize: CGSizeMake(cell.contentView.bounds.size.width - CGRectGetMaxX(cell.avatarImageView.frame) - 8.0 - 8.0, 22.0) options: NSStringDrawingUsesLineFragmentOrigin attributes: @{NSFontAttributeName: cell.titleLabel.font} context: nil];
		CGRect frame = CGRectMake(CGRectGetMaxX(cell.avatarImageView.frame) + 8.0, startY, rect.size.width, rect.size.height);
		cell.titleLabel.frame = frame;
		height = height < CGRectGetMaxY(cell.titleLabel.frame) ? CGRectGetMaxY(cell.titleLabel.frame) : height;
	}
	if(!cell.descriptionLabel.hidden)
	{
		CGRect rect = [cell.descriptionLabel.text boundingRectWithSize: CGSizeMake(cell.contentView.bounds.size.width - CGRectGetMaxX(cell.avatarImageView.frame) - 8.0 - 8.0, MAXFLOAT) options: NSStringDrawingUsesLineFragmentOrigin attributes: @{NSFontAttributeName: cell.descriptionLabel.font} context: nil];
		CGRect frame = CGRectMake(CGRectGetMaxX(cell.avatarImageView.frame) + 8.0, startY + cell.titleLabel.frame.size.height, rect.size.width, rect.size.height);
		cell.descriptionLabel.frame = frame;
		height = height < CGRectGetMaxY(cell.descriptionLabel.frame) ? CGRectGetMaxY(cell.descriptionLabel.frame) : height;
	}
	height += 8.0;
	_height = 44.0 < height ? height : 44.0;
}

@end
