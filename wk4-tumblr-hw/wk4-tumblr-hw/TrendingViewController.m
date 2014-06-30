//
//  TrendingViewController.m
//  wk4-tumblr-hw
//
//  Created by Engly Chang on 6/28/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

#import "TrendingViewController.h"
#import "LoginFormViewController.h"

@interface TrendingViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *feed;
- (IBAction)onLoginBtn:(id)sender;

@end

@implementation TrendingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.ScrollView.contentSize = CGSizeMake(self.feed.frame.size.width, self.feed.frame.size.height);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onLoginBtn:(id)sender {
    UIViewController *vc = [[LoginFormViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:vc];
    navigationController.modalTransitionStyle = UIModalTransitionStyleCoverVertical; // Rises from below
    
    [self.view.window.rootViewController presentViewController:navigationController animated:YES completion:nil];
}
@end
