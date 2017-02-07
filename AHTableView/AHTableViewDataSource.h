//
//  AHTableViewDataSource.h
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewSectionItem;
@class AHTableViewProxy;

@interface AHTableViewDataSource : NSObject <UITableViewDataSource>

@property (weak, nonatomic) AHTableViewProxy *proxy;

@end
