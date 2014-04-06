//
//  Topic.h
//  Ergosphere
//
//  Created by Rachel Schifano on 4/5/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Topic : NSObject

@property (nonatomic, strong) NSString *_id; // id of topic
@property (nonatomic, strong) NSString *name; // name of topic
@property (nonatomic, strong) NSString *imageFile; // name of image file
@property (nonatomic, strong) NSString *description; // description of topic

@end
