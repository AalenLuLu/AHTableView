//
//  ViewController.m
//  AHTableView
//
//  Created by Aalen on 16/8/9.
//  Copyright © 2016年 Aalen. All rights reserved.
//

#import "ViewController.h"

#import "AHTableView.h"
#import "DemoDelegate.h"
#import "AHTableViewDataSource.h"
#import "DemoCellData.h"
#import "DemoSectionData.h"

@interface ViewController ()

@property (strong, nonatomic) AHTableView *tableView;
@property (strong, nonatomic) AHTableViewDataSource *dataSource;
@property (strong, nonatomic) AHTableViewDelegate *delegate;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	DemoCellData *cell1 = [[DemoCellData alloc] init];
	cell1.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	cell1.didSelectCellAction = ^(UITableView *tableView, NSIndexPath *indexPath){
		NSLog(@"did select index: %@", indexPath);
	};
	
	DemoCellData *cell2 = [[DemoCellData alloc] init];
	cell2.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	DemoCellData *cell3 = [[DemoCellData alloc] init];
	cell3.data = @{@"title": @"Title", @"description": @"Description"};
	
	AHTableViewCellData *cell4 = [[AHTableViewCellData alloc] init];
	cell4.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	DemoCellData *cell5 = [[DemoCellData alloc] init];
	cell5.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell6 = [[AHTableViewCellData alloc] init];
	cell6.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	DemoCellData *cell7 = [[DemoCellData alloc] init];
	cell7.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	AHTableViewCellData *cell8 = [[AHTableViewCellData alloc] init];
	cell8.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	DemoCellData *cell9 = [[DemoCellData alloc] init];
	cell9.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	DemoCellData *cell10 = [[DemoCellData alloc] init];
	cell10.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	DemoCellData *cell11 = [[DemoCellData alloc] init];
	cell11.data = @{@"title": @"Title", @"description": @"DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"};
	
	DemoSectionData *section = [[DemoSectionData alloc] init];
	section.data = @{@"header": @"sectionHeader", @"footer": @"sectionFooter"};
	NSMutableArray *cells = [[NSMutableArray alloc] init];
	[cells addObjectsFromArray: @[cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11, cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9, cell10, cell11]];
	section.items = cells;
	
	NSMutableArray *data = [[NSMutableArray alloc] init];
	[data addObject: section];
	
	_dataSource = [[AHTableViewDataSource alloc] init];
	_delegate = [[DemoDelegate alloc] init];
	
	_dataSource.data = data;
	
	_tableView = [[AHTableView alloc] initWithFrame: self.view.bounds style: UITableViewStylePlain];
	_tableView.delegate = _delegate;
	_tableView.dataSource = _dataSource;
	
//	[_dataSource tableView: _tableView registerClassWithNames: @{@"cell": @[NSStringFromClass([DemoCellData viewClass]), NSStringFromClass([AHTableViewCellData viewClass])]}];
	
	[_dataSource tableView: _tableView registerCellWithClass: [DemoCellData viewClass] reuseIdentifier: NSStringFromClass([DemoCellData viewClass])];
	[_dataSource tableView: _tableView registerCellWithClass: [DemoCellData viewClass] reuseIdentifier: NSStringFromClass([AHTableViewCellData viewClass])];
	
	[self.view addSubview: _tableView];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
