//
//  TopicBuilder.m
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import "TopicBuilder.h"
#import "Topic.h"

@implementation TopicBuilder

+ (NSArray *)topicsFromJSON:(NSData *)objectNotation error:(NSError **)error
{
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    NSMutableArray *topics = [[NSMutableArray alloc] init];
    
    NSArray *results = [parsedObject valueForKey:@"results"];
    NSLog(@"Count %d", results.count);
    
    for (NSDictionary *topicsDictionary in results) {
        Topic *topic = [[Topic alloc] init];
        
        for (NSString *key in topicsDictionary) {
            if ([topics respondsToSelector:NSSelectorFromString(key)]) {
                [topics setValue:[topicsDictionary valueForKey:key] forKey:key];
            }
        }
        
        [topics addObject:topic];
    }
    
    return topics;
}

@end
