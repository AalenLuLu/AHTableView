//
//  DemoCellData.m
//  AHTableView
//
//  Created by Aalen on 16/8/10.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "DemoCellData.h"

@implementation DemoCellData

+ (Class)viewClass
{
	return NSClassFromString(@"DemoCell");
}

+ (Class)viewModelClass
{
	return NSClassFromString(@"DemoCellViewModel");
}

@end
