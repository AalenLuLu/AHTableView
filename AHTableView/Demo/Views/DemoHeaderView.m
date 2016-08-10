//
//  DemoHeaderView.m
//  AHTableView
//
//  Created by Aalen on 16/8/10.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "DemoHeaderView.h"

@implementation DemoHeaderView

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
	if(self = [super initWithReuseIdentifier:reuseIdentifier])
	{
		_descriptionLabel = [[UILabel alloc] init];
		_descriptionLabel.font = [UIFont systemFontOfSize: 14.0];
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
