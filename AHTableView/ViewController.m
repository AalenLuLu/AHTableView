//
//  ViewController.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "ViewController.h"

#import "AHTableView.h"
#import "AHTableViewDelegate.h"
#import "AHTableViewDataSource.h"
#import "AHTableViewSectionData.h"
#import "AHTableViewCellData.h"

@interface ViewController ()

@property (strong, nonatomic) AHTableView *tableView;
@property (strong, nonatomic) AHTableViewDataSource *dataSource;
@property (strong, nonatomic) AHTableViewDelegate *delegate;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	AHTableViewCellData *cell1 = [[AHTableViewCellData alloc] init];
	cell1.cellName = @"AHTableViewCell";
	cell1.viewModelName = @"AHTableViewCellViewModel";
	cell1.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	cell1.didSelectCellAction = ^(UITableView *tableView, NSIndexPath *indexPath){
		NSLog(@"did select index: %@", indexPath);
	};
	
	AHTableViewCellData *cell2 = [[AHTableViewCellData alloc] init];
	cell2.cellName = @"AHTableViewCell";
	cell2.viewModelName = @"AHTableViewCellViewModel";
	cell2.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell3 = [[AHTableViewCellData alloc] init];
	cell3.cellName = @"AHTableViewCell";
	cell3.viewModelName = @"AHTableViewCellViewModel";
	cell3.data = @{@"title": @"Title", @"description": @"Description"};
	
	AHTableViewCellData *cell4 = [[AHTableViewCellData alloc] init];
	cell4.cellName = @"AHTableViewCell";
	cell4.viewModelName = @"AHTableViewCellViewModel";
	cell4.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell5 = [[AHTableViewCellData alloc] init];
	cell5.cellName = @"AHTableViewCell";
	cell5.viewModelName = @"AHTableViewCellViewModel";
	cell5.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell6 = [[AHTableViewCellData alloc] init];
	cell6.cellName = @"AHTableViewCell";
	cell6.viewModelName = @"AHTableViewCellViewModel";
	cell6.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell7 = [[AHTableViewCellData alloc] init];
	cell7.cellName = @"AHTableViewCell";
	cell7.viewModelName = @"AHTableViewCellViewModel";
	cell7.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell8 = [[AHTableViewCellData alloc] init];
	cell8.cellName = @"AHTableViewCell";
	cell8.viewModelName = @"AHTableViewCellViewModel";
	cell8.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell9 = [[AHTableViewCellData alloc] init];
	cell9.cellName = @"AHTableViewCell";
	cell9.viewModelName = @"AHTableViewCellViewModel";
	cell9.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell10 = [[AHTableViewCellData alloc] init];
	cell10.cellName = @"AHTableViewCell";
	cell10.viewModelName = @"AHTableViewCellViewModel";
	cell10.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell11 = [[AHTableViewCellData alloc] init];
	cell11.cellName = @"AHTableViewCell";
	cell11.viewModelName = @"AHTableViewCellViewModel";
	cell11.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewSectionData *section = [[AHTableViewSectionData alloc] init];
	section.data = @{@"header": @"sectionHeader", @"footer": @"sectionFooter"};
	NSMutableArray *cells = [[NSMutableArray alloc] init];
	[cells addObjectsFromArray: @[cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11]];
	section.items = cells;
	
	NSMutableArray *data = [[NSMutableArray alloc] init];
	[data addObject: section];
	
	_dataSource = [[AHTableViewDataSource alloc] init];
	_delegate = [[AHTableViewDelegate alloc] init];
	
	_dataSource.data = data;
	
	_tableView = [[AHTableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
	_tableView.delegate = _delegate;
	_tableView.dataSource = _dataSource;
	
	[_dataSource tableView: _tableView registerClassWithNames: @{@"cell": @[@"AHTableViewCell"]}];
	
	[self.view addSubview: _tableView];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
