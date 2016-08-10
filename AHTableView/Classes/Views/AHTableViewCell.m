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
