//
//  TopicManagerDelegate.h
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TopicManagerDelegate <NSObject>

- (void)didReceiveTopics:(NSArray *)toipcs;
- (void)fetchingTopicsFailedWithError:(NSError *)error;

@end
