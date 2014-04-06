//
//  TopicManager.h
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TopicManagerDelegate.h"
#import "TopicCommunicatorDelegate.h"

@class TopicCommunicator;

@interface TopicManager : NSObject

@property (strong, nonatomic) TopicCommunicator *communicator;
@property (weak, nonatomic) id<TopicManagerDelegate> delegate;

- (void)connectWithErgosophere;

@end
