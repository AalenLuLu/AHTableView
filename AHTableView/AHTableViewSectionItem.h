//
//  AHTableViewSectionItem.h
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewCellItem;

@interface AHTableViewSectionItem : NSObject

@property (strong, nonatomic) NSMutableArray<AHTableViewCellItem *> *cells;
@property (copy, nonatomic) NSString *titleForHeader;
@property (copy, nonatomic) NSString *titleForFooter;
@property (assign, nonatomic) CGFloat headerHeight;
@property (assign, nonatomic) CGFloat footerHeight;

- (Class)classForHeader;
- (Class)classForFooter;

@end
