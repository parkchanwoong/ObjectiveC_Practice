//
//  ViewController.m
//  ProgressViewTest
//
//  Created by 박찬웅 on 2017. 7. 20..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIProgressView *testprogressView;
@property UIProgressView *progressView;
@property UILabel *label;
@property CGFloat a ;
@property BOOL check;
@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}
- (IBAction)progressViewActionButton:(id)sender
{
    if (self.check == YES)
    {
        [self.progressView setProgress:1.0 animated:YES];
        self.check = NO;
    } else {
        [self.progressView setProgress:0 animated:YES];
        self.check = YES;
    }
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.check = YES;
    
    self.a = 5.0;
    self.progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 0)];
    [self.progressView setTransform:CGAffineTransformMakeScale(1.0, 40.0)];
    
//    self.progressView.trackTintColor = [UIColor blackColor];
//    [self.progressView setTrackImage:[UIImage imageNamed:@"w_battery1"]];
//    [self.progressView setProgressImage:[UIImage imageNamed:@"w_battery7"]];
    self.progressView.progress = 0.0;
    
    self.progressView.progressViewStyle = UIProgressViewStyleBar;
    
    
    
    CGFloat centerX = self.progressView.frame.size.width / 2;
    CGFloat centerY = self.progressView.frame.size.height / 2;
    
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(0,100, self.progressView.frame.size.width, 100)];
    
    self.label.text = @"하하하하";
    
    self.label.textAlignment = NSTextAlignmentCenter;
    
//    [self.label setCenter:CGPointMake(centerX, centerY)];
    
    
    
//    [self.progressView addSubview:self.label];
    [self.view addSubview:self.progressView];
    
    [self.view addSubview:self.label];
    
//    [self.progressView setHidden:YES];
    
    
    
//    
//    self.testprogressView.progress = 0.1;
//    self.testprogressView.progressViewStyle = UIProgressViewStyleBar;
//    
//
//    
//    [self.testprogressView setProgress:10 animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
