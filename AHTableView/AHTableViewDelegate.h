//
//  AHTableViewDelegate.h
//  AHTableViewDemo
//
//  Created by Aalen on 2017/2/7.
//  Copyright © 2017年 Aalen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AHTableViewProxy;

@interface AHTableViewDelegate : NSObject <UITableViewDelegate>

@property (weak, nonatomic) AHTableViewProxy *proxy;

@end
