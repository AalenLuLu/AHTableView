//
//  AHTableViewSectionData.h
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewCellData;

@interface AHTableViewSectionData : NSObject

@property (copy, nonatomic) NSDictionary *data;
@property (strong, nonatomic) NSMutableArray<AHTableViewCellData *> *items;

+ (Class)headerViewClass;
+ (Class)headerViewModelClass;
+ (Class)footerViewClass;
+ (Class)footerViewModelClass;

//Can not override...
- (Class)headerViewClass;
- (Class)headerViewModelClass;
- (Class)footerViewClass;
- (Class)footerViewModelClass;

@end
