//
//  ViewController.m
//  Ergosphere
//
//  Created by Rachel Schifano on 3/25/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import "ViewController.h"
#import "Topic.h"
#import "TopicManager.h"
#import "TopicCommunicator.h"

@interface ViewController () <TopicManagerDelegate> {
    NSArray *_topics;
    TopicManager *_manager;
}


@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _manager = [[TopicManager alloc] init]; // instantiate new manager
    _manager.communicator = [[TopicCommunicator alloc] init]; // fill communicator property
    _manager.communicator.delegate = _manager;
    _manager.delegate = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(startFetchingTopics:)
                                                 name:@"kCLAuthorizationStatusAuthorized"
                                               object:nil];
    
    
}

- (void)startFetchingGroups:(NSNotification *)notification
{
    [_manager fetchTopicsAtCoordinate:self.locationManager.location.coordinate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Function allows for segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}





// TEST TEST TEST
-(IBAction)showMeow:(id)sender{
    
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"I'm being interviewed!" message:@"This is a test alert to ensure the app works." delegate:self cancelButtonTitle:@"Okay." otherButtonTitles:nil, nil];
    [alert show];
}
// TEST TEST TEST
- (IBAction)play:(id)sender {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        // For iPhone
        UIAlertView *playAlert = [[UIAlertView alloc] initWithTitle:@"A wild new topic appeared!" message:@"Learn something new!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [playAlert show];
        
    } else {
        // For iPad
        UIAlertView *playAlert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"Sorry, you lost the game." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [playAlert show];
    }
}

@end
