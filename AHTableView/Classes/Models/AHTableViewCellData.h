//
//  AHTableViewCellData.h
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AHTableViewCellData : NSObject

@property (copy, nonatomic) NSString *viewModelName;
@property (copy, nonatomic) NSString *cellName;
@property (copy, nonatomic) NSDictionary *data;
@property (copy, nonatomic) void (^didSelectCellAction)(UITableView *tableView, NSIndexPath *indexPath);

@end
