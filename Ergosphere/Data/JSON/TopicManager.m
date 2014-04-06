//
//  TopicManager.m
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import "TopicManager.h"
#import "TopicBuilder.h"
#import "TopicCommunicator.h"

@implementation TopicManager

- (void)connectWithErgosophere
{

}

#pragma mark - TopicCommunicatorDelegate

- (void)receivedGroupsJSON:(NSData *)objectNotation
{
    NSError *error = nil;
    NSArray *topics = [TopicBuilder topicsFromJSON:objectNotation error:&error];
    
    if (error != nil) {
        [self.delegate fetchingTopicsFailedWithError:error];
        
    } else {
        [self.delegate didReceiveTopics:topics];
    }
}

- (void)fetchingGroupsFailedWithError:(NSError *)error
{
    [self.delegate fetchingTopicsFailedWithError:error];
}

@end