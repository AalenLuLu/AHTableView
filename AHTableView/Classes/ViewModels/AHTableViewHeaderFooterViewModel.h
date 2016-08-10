//
//  AHTableViewHeaderFooterViewModel.h
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewHeaderFooterView;
@class AHTableViewSectionData;

@interface AHTableViewHeaderFooterViewModel : NSObject

@property (strong, nonatomic) AHTableViewSectionData *data;
@property (assign, nonatomic) CGFloat height;

- (void)reloadDataWithHeaderFooterView: (AHTableViewHeaderFooterView *)headerFooterView;
- (void)layoutWithHeaderFooterView: (AHTableViewHeaderFooterView *)headerFooterView;

@end
