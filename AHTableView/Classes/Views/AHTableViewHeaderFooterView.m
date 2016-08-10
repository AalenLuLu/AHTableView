//
//  AHTableViewHeaderFooterView.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "AHTableViewHeaderFooterView.h"

#import "AHTableViewHeaderFooterViewModel.h"

@implementation AHTableViewHeaderFooterView

- (CGFloat)reload
{
	[_viewModel reloadDataWithHeaderFooterView: self];
	[_viewModel layoutWithHeaderFooterView: self];
	return _viewModel.height;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
