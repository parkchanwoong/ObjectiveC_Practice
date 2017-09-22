//
//  WeatherCell.h
//  JSONParsing
//
//  Created by ChoiJinYoung on 3/6/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UILabel *countryLabel;
@property (strong, nonatomic) IBOutlet UILabel *weatherLabel;
@property (strong, nonatomic) IBOutlet UILabel *temperatureLabel;

@end
