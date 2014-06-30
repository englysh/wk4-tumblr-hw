//
//  ComposeViewController.m
//  wk4-tumblr-hw
//
//  Created by Engly Chang on 6/28/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

#import "ComposeViewController.h"

@interface ComposeViewController ()
- (IBAction)nevermind:(id)sender;

@end

@implementation ComposeViewController

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
       }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nevermind:(id)sender {
     [self dismissViewControllerAnimated:YES completion:nil];
}
@end
