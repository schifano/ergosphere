//
//  TopicViewController.m
//  Ergosphere
//
//  Created by Rachel Schifano on 4/2/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

// #import "TopicTableCell.h" // Custom table cell class
#import "TopicViewController.h"
#import "TopicDetailViewController.h"
#import "Topic.h"

@interface TopicViewController ()

@end

@implementation TopicViewController {

    NSArray *topics;
    NSArray *thumbnails;
}

@synthesize tableView = _tableView;

/* Custome cell class
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Initialize Topic Data
    Topic *topic1 = [Topic new];
    topic1.name = @"Intermediate Polish";
    topic1.imageFile = @"polish.png";
    
    Topic *topic2 = [Topic new];
    topic2.name = @"Cognitive Science";
    topic2.imageFile = @"cog-sci.png";
    
    Topic *topic3 = [Topic new];
    topic3.name = @"Music Technology";
    topic3.imageFile = @"music-tech.png";
    
    Topic *topic4 = [Topic new];
    topic4.name = @"DJ Tips & Tricks";
    topic4.imageFile = @"dj-controller.png";
    
    Topic *topic5 = [Topic new];
    topic5.name = @"Elements & Principles of Art";
    topic5.imageFile = @"art.png";
    
    Topic *topic6 = [Topic new];
    topic6.name = @"Architecture";
    topic6.imageFile = @"architecture.png";
    
    Topic *topic7 = [Topic new];
    topic7.name = @"Korean Characters";
    topic7.imageFile = @"korean.png";
    
    topics = [NSArray arrayWithObjects:topic1, topic2, topic3, topic4, topic5, topic6, topic7, nil];
    
    
    // Initialize Table Data
    // topics = [NSArray arrayWithObjects:@"Intermediate Polish", @"Cognitive Science", @"Music Technology", @"DJ Tips & Tricks", @"Elements & Principles of Art", @"Architecture", @"Korean Characters", nil];
    
    // Initialize Thumbnail Data
    thumbnails = [NSArray arrayWithObjects:@"polish.png", @"cog-sci.png", @"music-tech.png", @"dj-controller.png", @"art.png", @"architecture.png", @"korean.png", nil];
    
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [topics count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"TopicCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    Topic *topic = [topics objectAtIndex:indexPath.row];
    cell.textLabel.text = topic.name;
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showTopicDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        TopicDetailViewController *destViewController = segue.destinationViewController;
        destViewController.topic = [topics objectAtIndex:indexPath.row];
        
        // Hide bottom tab bar in the detail view
        //   destViewController.hidesBottomBarWhenPushed = YES;
    }
}


@end
