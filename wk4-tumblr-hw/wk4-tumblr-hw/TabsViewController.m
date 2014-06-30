//
//  TabsViewController.m
//  wk4-tumblr-hw
//
//  Created by Engly Chang on 6/28/14.
//  Copyright (c) 2014 Engly Chang. All rights reserved.
//

#import "TabsViewController.h"
#import "HomeViewController.h"
#import "SearchViewController.h"
#import "AccountViewController.h"
#import "TrendingViewController.h"
#import "ComposeViewController.h"

#import "LoginFormViewController.h"

@interface TabsViewController ()
@property (weak, nonatomic) IBOutlet UIView *ContentLoadView;
@property (weak, nonatomic) IBOutlet UIButton *homeBtn;
@property (weak, nonatomic) IBOutlet UIButton *searchBtn;
@property (weak, nonatomic) IBOutlet UIButton *composeBtn;
@property (weak, nonatomic) IBOutlet UIButton *accountBtn;
@property (weak, nonatomic) IBOutlet UIButton *trendingBtn;
- (IBAction)onHomeBtn:(id)sender;
- (IBAction)onSearchBtn:(id)sender;
- (IBAction)onComposeBtn:(id)sender;
- (IBAction)onAccountBtn:(id)sender;
- (IBAction)onTrendingBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *bubble;


@property (strong, nonatomic) UINavigationController *homeNav;

@property (strong, nonatomic) HomeViewController *homeViewControllr;
@property (strong, nonatomic) SearchViewController *searchViewControllr;
@property (strong, nonatomic) AccountViewController *accountViewControllr;
@property (strong, nonatomic) TrendingViewController *trendingViewControllr;
@property (strong, nonatomic) ComposeViewController *composeViewControllr;

@end

@implementation TabsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.homeViewControllr = [[HomeViewController alloc]init];
        self.homeNav = [[UINavigationController alloc]initWithRootViewController:self.homeViewControllr];
                
        self.searchViewControllr = [[SearchViewController alloc]init];
        self.accountViewControllr = [[AccountViewController alloc]init];
        self.trendingViewControllr = [[TrendingViewController alloc]init];
        self.composeViewControllr = [[ComposeViewController alloc]init];
    
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.homeBtn setBackgroundImage:[UIImage imageNamed:@"home_selected_icon"] forState:UIControlStateNormal];

    self.homeNav.view.frame = self.ContentLoadView.frame;
    //set the size of the subviews to the same size as the container it's being loaded into
    [self.ContentLoadView addSubview:self.homeNav.view];
    
    self.bubble.alpha = 0;
    [UIView animateWithDuration:0.8 animations:^{
        self.bubble.alpha =1;
    }];
    
    self.bubble.center = CGPointMake(96, 497);
    
    [UIView animateWithDuration:0.8
                          delay:0.3
                        options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         // do whatever animation you want, e.g.,
                         
                         self.bubble.center = CGPointMake(self.bubble.center.x , self.bubble.center.y-4);
                     }
                     completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onHomeBtn:(id)sender {
    
    //all the btn swapping action here
    [self.homeBtn setBackgroundImage:[UIImage imageNamed:@"home_selected_icon"] forState:UIControlStateNormal];
    
    [self.searchBtn setBackgroundImage:[UIImage imageNamed:@"search_icon"] forState:UIControlStateNormal];
    [self.accountBtn setBackgroundImage:[UIImage imageNamed:@"account_icon"] forState:UIControlStateNormal];
    [self.trendingBtn setBackgroundImage:[UIImage imageNamed:@"trending_icon"] forState:UIControlStateNormal];
    
    [self.ContentLoadView addSubview:self.homeNav.view];
    self.bubble.alpha = 1;

    
    //self.homeNav.view.alpha = 0;
    //[UIView animateWithDuration:0.8 animations:^{
    //    self.homeNav.view.alpha =1;
    //}];
}
- (IBAction)onSearchBtn:(id)sender {
    
    //all the btn swapping action here
    [self.searchBtn setBackgroundImage:[UIImage imageNamed:@"search_selected_icon"] forState:UIControlStateNormal];
    
    [self.homeBtn setBackgroundImage:[UIImage imageNamed:@"home_icon"] forState:UIControlStateNormal];
    [self.accountBtn setBackgroundImage:[UIImage imageNamed:@"account_icon"] forState:UIControlStateNormal];
    [self.trendingBtn setBackgroundImage:[UIImage imageNamed:@"trending_icon"] forState:UIControlStateNormal];
    

    self.searchViewControllr = [[SearchViewController alloc]init];
    [self.ContentLoadView addSubview:self.searchViewControllr.view];

    self.bubble.alpha =0;

}

- (IBAction)onComposeBtn:(id)sender {
    
    self.bubble.alpha = 1;
    UIViewController *vc = [[ComposeViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical; // Rises from below
    
    // vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve; // Fade
    // vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal; // Flip
    // vc.modalTransitionStyle = UIModalTransitionStylePartialCurl; // Curl
    
    [self.view.window.rootViewController presentViewController:vc animated:YES completion:nil];
    
    

}

- (IBAction)onAccountBtn:(id)sender {
    //all the btn swapping action here
    [self.accountBtn setBackgroundImage:[UIImage imageNamed:@"account_selected_icon"] forState:UIControlStateNormal];
    
    [self.homeBtn setBackgroundImage:[UIImage imageNamed:@"home_icon"] forState:UIControlStateNormal];
    [self.searchBtn setBackgroundImage:[UIImage imageNamed:@"search_icon"] forState:UIControlStateNormal];
    [self.trendingBtn setBackgroundImage:[UIImage imageNamed:@"trending_icon"] forState:UIControlStateNormal];
    
    
    self.accountViewControllr = [[AccountViewController alloc]init];
    [self.ContentLoadView addSubview:self.accountViewControllr.view];

    self.bubble.alpha = 1;
   
}

- (IBAction)onTrendingBtn:(id)sender {
    //all the btn swapping action here
    [self.trendingBtn setBackgroundImage:[UIImage imageNamed:@"trending_selected_icon"] forState:UIControlStateNormal];
    
    [self.homeBtn setBackgroundImage:[UIImage imageNamed:@"home_icon"] forState:UIControlStateNormal];
    [self.searchBtn setBackgroundImage:[UIImage imageNamed:@"search_icon"] forState:UIControlStateNormal];
    [self.accountBtn setBackgroundImage:[UIImage imageNamed:@"account_icon"] forState:UIControlStateNormal];
    
    [self.ContentLoadView addSubview:self.trendingViewControllr.view];
    
    self.bubble.alpha = 1;
    }
@end
