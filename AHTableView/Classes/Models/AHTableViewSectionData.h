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

@property (copy, nonatomic) NSString *headerName;
@property (copy, nonatomic) NSString *headerViewModelName;
@property (copy, nonatomic) NSString *footerName;
@property (copy, nonatomic) NSString *footerViewModelName;
@property (copy, nonatomic) NSDictionary *data;
@property (strong, nonatomic) NSMutableArray<AHTableViewCellData *> *items;

@end
