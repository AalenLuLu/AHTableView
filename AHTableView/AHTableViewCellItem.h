//
//  AHTableViewCellItem.h
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AHTableViewCellItem : NSObject

@property (assign, nonatomic) CGFloat cellHeight;

- (Class)classForCell;
- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath;

@end
