//
//  AHTableViewCell.h
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewCellViewModel;

@interface AHTableViewCell : UITableViewCell

@property (strong, nonatomic) AHTableViewCellViewModel *viewModel;
@property (strong, nonatomic) UIImageView *avatarImageView;
@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *descriptionLabel;

- (CGFloat)reload;

@end
