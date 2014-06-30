//
//  AccountViewController.m
//  wk4-tumblr-hw
//
//  Created by Engly Chang on 6/28/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

#import "AccountViewController.h"
#import "LoginFormViewController.h"

@interface AccountViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *feed;
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;
- (IBAction)onLoginBtn:(id)sender;

@end

@implementation AccountViewController

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
