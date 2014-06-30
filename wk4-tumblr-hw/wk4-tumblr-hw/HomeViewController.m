//
//  HomeViewController.m
//  wk4-tumblr-hw
//
//  Created by Engly Chang on 6/28/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

#import "HomeViewController.h"
#import "LoginFormViewController.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *feed;

@property (strong, nonatomic) LoginFormViewController *loginformViewController;

- (void)onRightButton;
@end

@implementation HomeViewController

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
    //make scrollview work
    self.ScrollView.contentSize = CGSizeMake(self.feed.frame.size.width, self.feed.frame.size.height);
 
    
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"Log In" style:UIBarButtonItemStylePlain target:self action:@selector(onRightButton)];
   
     [rightButton setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIColor whiteColor],  UITextAttributeTextColor,nil] forState:UIControlStateNormal];
                                         
    
    self.navigationItem.rightBarButtonItem = rightButton;
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tumblr_logo"]];


    
                                     
    /*
    
    


    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Log in" style:UIBarButtonItemStylePlain target:self action:@selector(onRightButton)];
   */
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:((51-14)/255.0) green:((66-13)/255.0) blue:((86-7)/255.0) alpha:1]];

   // self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tumblr_logo"]];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onRightButton {
    UIViewController *vc = [[LoginFormViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:vc];
    navigationController.modalTransitionStyle = UIModalTransitionStyleCoverVertical; // Rises from below
    
    [self.view.window.rootViewController presentViewController:navigationController animated:YES completion:nil];
 
}

@end
