//
//  DemoCell.m
//  AHTableView
//
//  Created by Aalen on 16/8/10.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "DemoCell.h"

@implementation DemoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
	if(self = [super initWithStyle: style reuseIdentifier: reuseIdentifier])
	{
		_avatarImageView = [[UIImageView alloc] init];
		_titleLabel = [[UILabel alloc] init];
		_descriptionLabel = [[UILabel alloc] init];
		
		_titleLabel.font = [UIFont systemFontOfSize: 18.0];
		_descriptionLabel.font = [UIFont systemFontOfSize: 15.0];
		
		_descriptionLabel.numberOfLines = 0;
		
		[self.contentView addSubview: _avatarImageView];
		[self.contentView addSubview: _titleLabel];
		[self.contentView addSubview: _descriptionLabel];
	}
	return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
