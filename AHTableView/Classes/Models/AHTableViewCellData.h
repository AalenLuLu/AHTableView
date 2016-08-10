//
//  AHTableViewCellData.h
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AHTableViewCellData : NSObject

@property (copy, nonatomic) NSDictionary *data;
@property (copy, nonatomic) void (^didSelectCellAction)(UITableView *tableView, NSIndexPath *indexPath);

+ (Class)viewClass;
+ (Class)viewModelClass;

//Can not override...
- (Class)viewClass;
- (Class)viewModelClass;

@end
