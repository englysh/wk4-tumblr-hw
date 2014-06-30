//
//  LoginFormViewController.m
//  wk4-tumblr-hw
//
//  Created by Engly Chang on 6/29/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

#import "LoginFormViewController.h"

@interface LoginFormViewController ()
- (IBAction)onCancel:(id)sender;

@end

@implementation LoginFormViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
