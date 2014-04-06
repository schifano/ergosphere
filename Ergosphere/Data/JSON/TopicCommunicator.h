//
//  TopicCommunicator.h
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TopicCommunicatorDelegate;

@interface TopicCommunicator : NSObject

@property (weak, nonatomic) id<TopicCommunicatorDelegate> delegate;

@end
