//
//  ViewController.m
//  Ergosphere
//
//  Created by Rachel Schifano on 3/25/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    
    
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
    
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"Meow!" message:@"This is a test." delegate:self cancelButtonTitle:@"Yeah, okay." otherButtonTitles:nil, nil];
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
