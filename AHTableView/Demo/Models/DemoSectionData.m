//
//  DemoSectionData.m
//  AHTableView
//
//  Created by Aalen on 16/8/10.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "DemoSectionData.h"

@implementation DemoSectionData

+ (Class)headerViewClass
{
	return NSClassFromString(@"DemoHeaderView");
}

+ (Class)headerViewModelClass
{
	return NSClassFromString(@"DemoHeaderViewModel");
}

@end
