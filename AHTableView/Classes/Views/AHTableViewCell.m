//
//  AHTableViewCell.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "AHTableViewCell.h"

#import "AHTableViewCellViewModel.h"

@implementation AHTableViewCell

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

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (CGFloat)reload
{
	[_viewModel reloadDataWithCell: self];
	[_viewModel layoutWithCell: self];
	return _viewModel.height;
}

@end
