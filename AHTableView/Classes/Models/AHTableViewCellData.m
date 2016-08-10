//
//  AHTableViewCellData.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "AHTableViewCellData.h"

@implementation AHTableViewCellData

+ (Class)viewClass
{
	return NSClassFromString(@"AHTableViewCell");
}

+ (Class)viewModelClass
{
	return NSClassFromString(@"AHTableViewCellViewModel");
}

- (Class)viewClass
{
	return [[self class] viewClass];
}

- (Class)viewModelClass
{
	return [[self class] viewModelClass];
}

@end
