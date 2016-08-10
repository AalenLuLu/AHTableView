//
//  AHTableViewSectionData.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "AHTableViewSectionData.h"

@implementation AHTableViewSectionData

+ (Class)headerViewClass
{
//	return NSClassFromString(@"AHTableViewHeaderFooterView");
	return nil;
}

+ (Class)headerViewModelClass
{
//	return NSClassFromString(@"AHTableViewHeaderFooterViewModel");
	return nil;
}

+ (Class)footerViewClass
{
//	return NSClassFromString(@"AHTableViewHeaderFooterView");
	return nil;
}

+ (Class)footerViewModelClass
{
//	return NSClassFromString(@"AHTableViewHeaderFooterViewModel");
	return nil;
}

- (Class)headerViewClass
{
	return [[self class] headerViewClass];
}

- (Class)headerViewModelClass
{
	return [[self class] headerViewModelClass];
}

- (Class)footerViewClass
{
	return [[self class] footerViewClass];
}

- (Class)footerViewModelClass
{
	return [[self class] footerViewModelClass];
}

@end
