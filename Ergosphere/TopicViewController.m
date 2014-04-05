//
//  TopicViewController.m
//  Ergosphere
//
//  Created by Rachel Schifano on 4/2/14.
//  Copyright (c) 2014 Rachel Schifano. All rights reserved.
//

#import "TopicViewController.h"
#import "TopicTableCell.h"

@interface TopicViewController ()

@end

@implementation TopicViewController

    NSArray *topics;
    NSArray *thumbnails;

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
    
    // Initialize Table Data
    topics = [NSArray arrayWithObjects:@"Intermediate Polish", @"Cognitive Science", @"Music Technology", @"DJ Tips & Tricks", @"Elements & Principles of Art", @"Architecture", @"Korean Characters", nil];
    
    // Initialize Thumbnail Data
    thumbnails = [NSArray arrayWithObjects:@"polish.png", @"cog-sci.png", @"music-tech.png", @"dj-controller.png", @"art.png", @"architecture.png", @"korean.png", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    // code for updating font size
    return [topics count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *topicTableIdentifier = @"TopicTableCell";
    
    TopicTableCell *cell = (TopicTableCell *)[tableView dequeueReusableCellWithIdentifier:topicTableIdentifier];
    
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TopicTableCell_iPad" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.topicLabel.text = [topics objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    
    return cell;
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
