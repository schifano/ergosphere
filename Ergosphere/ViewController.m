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
    
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"I love Michal" message:@"Hug Hug Kitty Meow" delegate:self cancelButtonTitle:@"yah okie" otherButtonTitles:nil, nil];
    [alert show];
}
// TEST TEST TEST
- (IBAction)play:(id)sender {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        // For iPhone
        UIAlertView *playAlert = [[UIAlertView alloc] initWithTitle:@"New Game" message:@"Start Playing..." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [playAlert show];
        
    } else {
        // For iPad
        UIAlertView *playAlert = [[UIAlertView alloc] initWithTitle:@"Game Over" message:@"sry u lost the game" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [playAlert show];
    }
}

@end
