//
//  AHTableViewProxy.h
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewDataSource;
@class AHTableViewDelegate;
@class AHTableViewSectionItem;
@class AHTableViewCellItem;

@interface AHTableViewProxy : NSObject

@property (strong, readonly, nonatomic) UITableView *tableView;
@property (strong, readonly, nonatomic) AHTableViewDataSource *dataSource;
@property (strong, readonly, nonatomic) AHTableViewDelegate *delegate;

//@property (strong, nonatomic) NSMutableArray<AHTableViewSectionItem *> *displayData;

- (instancetype)initWithTableView: (UITableView *)tableView dataSource: (AHTableViewDataSource *)dataSource delegate: (AHTableViewDelegate *)delegate;

- (void)setDisplayData: (NSArray<AHTableViewSectionItem *> *)displayData;
- (NSArray<AHTableViewSectionItem *> *)displayData;
- (AHTableViewSectionItem *)sectionAtIndex: (NSUInteger)index;
- (AHTableViewCellItem *)itemAtIndexPath: (NSIndexPath *)indexPath;

- (void)addSection: (AHTableViewSectionItem *)section atIndex: (NSUInteger)index;
- (void)addItem: (AHTableViewCellItem *)item atIndexPath: (NSIndexPath *)indexPath;
- (void)removeSectionAtIndex: (NSUInteger)index;
- (void)removeItemAtIndexPath: (NSIndexPath *)indexPath;
- (void)updateSection: (AHTableViewSectionItem *)section atIndex: (NSUInteger)index;
- (void)updateItem: (AHTableViewCellItem *)item atIndexPath: (NSIndexPath *)indexPath;

@end
