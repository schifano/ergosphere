//
//  TopicCommunicator.m
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import "TopicCommunicator.h"
#import "TopicCommunicatorDelegate.h"

@implementation TopicCommunicator

- (void)connectWithErgosophere {

    NSString *urlAsString = @"http://ergosphere.co/api/topics";
    NSURL *url = [[NSURL alloc] initWithString:urlAsString];

    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL: url] queue: [[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            [self.delegate fetchingTopicsFailedWithError:error];
        } else {
            [self.delegate receivedTopicsJSON:data];
        }
        
    }];
}

@end
