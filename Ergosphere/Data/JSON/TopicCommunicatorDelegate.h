//
//  TopicCommunicatorDelegate.h
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//
//  The TopicCommunicator class is responsible for the communication with the Meetup APIs and
//  fetching the JSON data. It relies on the delegate of TopicCommunicatorDelegate to handle
//  the parsing of JSON data. The communicator has no idea how the JSON data is handled. Its
//  focus is only on creating connection to the Ergosophere API and fetching the raw JSON
//  result.
//

#import <Foundation/Foundation.h>

@protocol TopicCommunicatorDelegate <NSObject>

- (void)receivedTopicsJSON:(NSData *)objectNotation;
- (void)fetchingTopicsFailedWithError:(NSError *)error;

@end
