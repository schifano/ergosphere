//
//  TopicViewController
//  Ergosphere
//
//  Created by Rachel Schifano on 3/29/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import "TopicDetailViewController.h"

@interface TopicDetailViewController ()

@end

@implementation TopicDetailViewController

@synthesize topicLabel;
@synthesize topicName;

@synthesize topicPhoto;
@synthesize topic;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.topicLabel.text = topic.name;
    self.topicPhoto.image = [UIImage imageNamed:topic.imageFile];
    // pulls from object not array
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
