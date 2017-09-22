//
//  ViewController.m
//  imageDownload
//
//  Created by ChoiJinYoung on 3/7/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView,activityIndicatorView,downloadProgressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadAction:(id)sender {
    imgView.image = nil;
    [downloadProgressView setProgress:0.0 animated:NO];
    [activityIndicatorView startAnimating];
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"] completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error){
        imgView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
        [activityIndicatorView stopAnimating];
    }];
    [downloadTask resume];
}

//-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
////    NSLog(@"totalBytesExpectedToWrite : %lli",totalBytesExpectedToWrite);
////    NSLog(@"bytesWritten : %lli",bytesWritten);
////    NSLog(@"bytesWritten : %lli",totalBytesWritten);
//    
//    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
//    [downloadProgressView setProgress:progress animated:YES];
//    
//}
//
//-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
//    NSData *data = [NSData dataWithContentsOfURL:location];
//    imgView.image = [UIImage imageWithData:data];
//    [activityIndicatorView stopAnimating];
//}

- (IBAction)suspendAction:(id)sender {
    [downloadTask suspend];
}

- (IBAction)resumeAction:(id)sender {
    [downloadTask resume];
}

- (IBAction)cancelAction:(id)sender {
    [downloadTask cancel];
    [downloadProgressView setProgress:0.0 animated:NO];
    [activityIndicatorView stopAnimating];
}
@end
