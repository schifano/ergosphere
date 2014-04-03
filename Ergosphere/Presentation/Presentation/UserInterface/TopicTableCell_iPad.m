//
//  TopicTableCell_iPad.m
//  Ergosphere
//
//  Created by Rachel Schifano on 4/3/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import "TopicTableCell_iPad.h"

@implementation TopicTableCell_iPad


@synthesize topicLabel = _topicLabel;
@synthesize thumbnailImageView = _thumbnailImageView;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
