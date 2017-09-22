//
//  ViewController.h
//  DigitalFrame
//
//  Created by ChoiJinYoung on 3/2/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) IBOutlet UIButton *toggleButton;
@property (nonatomic, strong) IBOutlet UISlider *speedSlider;
@property (nonatomic, strong) IBOutlet UILabel *speedLabel;

-(IBAction)toggleAction:(id)sender;
-(IBAction)changeSpeedAction:(id)sender;
@end

