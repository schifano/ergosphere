//
//  TopicTableViewCell.h
//  Ergosphere
//
//  Created by Rachel Schifano on 4/4/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopicTableCell : UITableViewCell

// Instantiate properties for custom table cell
@property (nonatomic, weak) IBOutlet UILabel *topicLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
