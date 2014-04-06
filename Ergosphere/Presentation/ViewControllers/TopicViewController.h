//
//  TopicViewController.h
//  Ergosphere
//
//  Created by Rachel Schifano on 4/2/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopicViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
