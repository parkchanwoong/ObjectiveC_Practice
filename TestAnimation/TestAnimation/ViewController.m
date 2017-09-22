//
//  ViewController.m
//  TestAnimation
//
//  Created by 박찬웅 on 2017. 7. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import <JTHamburgerButton.h>
@interface ViewController ()

@property (weak, nonatomic) IBOutlet JTHamburgerButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)didBackButtonTouch:(JTHamburgerButton *)sender
{
    if(sender.currentMode == JTHamburgerButtonModeHamburger){
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeArrow];
    }
    else{
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeHamburger];
    }
}

- (IBAction)didCloseButtonTouch:(JTHamburgerButton *)sender
{
    if(sender.currentMode == JTHamburgerButtonModeHamburger){
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeCross];
    }
    else{
        [sender setCurrentModeWithAnimation:JTHamburgerButtonModeHamburger];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
