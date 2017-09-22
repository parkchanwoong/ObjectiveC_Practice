//
//  ViewController.m
//  ButtonRotationTest
//
//  Created by 박찬웅 on 2017. 7. 13..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *testBtn1;
@property (strong, nonatomic) IBOutlet UIButton *testBtn2;

@end

@implementation ViewController


    
    


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)firstBtn1:(id)sender
{
    self.testBtn1.transform = CGAffineTransformMakeRotation(M_PI_4);
    self.testBtn2.transform = CGAffineTransformMakeRotation(M_PI_4*3);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
