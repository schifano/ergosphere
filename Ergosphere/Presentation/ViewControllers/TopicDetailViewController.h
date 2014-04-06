//
//  TopicViewController.h
//  Ergosphere
//
//  Created by Rachel Schifano on 3/29/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Topic.h"

@interface TopicDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *topicPhoto;
@property (nonatomic, strong) IBOutlet UILabel *topicLabel;
@property (nonatomic, strong) NSString *topicName;

@property (nonatomic, strong) Topic *topic;

@end
