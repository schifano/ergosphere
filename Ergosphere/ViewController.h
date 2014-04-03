//
//  ViewController.h
//  Ergosphere
//
//  Created by Rachel Schifano on 3/25/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopicDetailViewController.h"

@interface ViewController : UIViewController
{
    TopicDetailViewController *topicViewController;
}
@property (nonatomic, retain) TopicDetailViewController *topicViewController;
@end
