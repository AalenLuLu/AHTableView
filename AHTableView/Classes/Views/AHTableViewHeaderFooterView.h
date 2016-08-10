//
//  AHTableViewHeaderFooterView.h
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewHeaderFooterViewModel;

@interface AHTableViewHeaderFooterView : UITableViewHeaderFooterView

@property (strong, nonatomic) AHTableViewHeaderFooterViewModel *viewModel;

- (CGFloat)reload;

@end
