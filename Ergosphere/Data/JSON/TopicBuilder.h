//
//  TopicBuilder.h
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TopicBuilder : NSObject

+ (NSArray *)topicsFromJSON:(NSData *)objectNotation error:(NSError **)error;

@end
