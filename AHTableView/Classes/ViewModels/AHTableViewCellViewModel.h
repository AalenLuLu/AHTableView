//
//  AHTableViewCellViewModel.h
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewCell;
@class AHTableViewCellData;

@interface AHTableViewCellViewModel : NSObject

@property (strong, nonatomic) AHTableViewCellData *data;
@property (assign, nonatomic) CGFloat height;

- (void)reloadDataWithCell: (AHTableViewCell *)cell;
- (void)layoutWithCell: (AHTableViewCell *)cell;

@end
