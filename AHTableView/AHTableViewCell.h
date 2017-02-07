//
//  AHTableViewCell.h
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewCellItem;

@interface AHTableViewCell : UITableViewCell

@property (strong, nonatomic) AHTableViewCellItem *item;

- (void)reload;

@end
