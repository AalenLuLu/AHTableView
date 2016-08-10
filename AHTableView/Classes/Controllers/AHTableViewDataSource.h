//
//  AHTableViewDataSource.h
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewSectionData;
@class AHTableViewCellData;

@interface AHTableViewDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray<AHTableViewSectionData *> *data;
@property (strong, readonly, nonatomic) NSMutableDictionary *viewModels;
@property (strong, readonly, nonatomic) NSMutableDictionary *heightCache;

//key: cell, headerfooter
- (void)tableView: (UITableView *)tableView registerClassWithNames: (NSDictionary<NSString *, NSArray<NSString *> *> *)names;
- (void)tableView: (UITableView *)tableView registerCellWithClass: (Class)cellClass reuseIdentifier: (NSString *)identifier;
- (void)tableView: (UITableView *)tableView registerHeaderFooterViewWithClass: (Class)headerFooterClass reuseIdentifier: (NSString *)identifier;

@end
