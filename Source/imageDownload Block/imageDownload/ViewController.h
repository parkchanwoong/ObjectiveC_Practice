//
//  ViewController.h
//  imageDownload
//
//  Created by ChoiJinYoung on 3/7/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSURLSessionTask *downloadTask;
}

@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@property (strong, nonatomic) IBOutlet UIProgressView *downloadProgressView;

- (IBAction)downloadAction:(id)sender;
- (IBAction)suspendAction:(id)sender;
- (IBAction)resumeAction:(id)sender;
- (IBAction)cancelAction:(id)sender;


@end

