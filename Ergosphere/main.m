//
//  main.m
//  Ergosphere
//
//  Created by Rachel Schifano on 3/25/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import <PixateFreestyle/PixateFreestyle.h> // CSS
#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        [PixateFreestyle initializePixateFreestyle];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
