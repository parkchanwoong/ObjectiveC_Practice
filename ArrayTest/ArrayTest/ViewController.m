//
//  ViewController.m
//  ArrayTest
//
//  Created by 박찬웅 on 2017. 8. 3..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSNumber *max = 0;
    NSArray *arr = [[NSArray alloc]initWithObjects:@1,@2,@8,@9,@3,@5,@2, nil];
    
    for (int i = 0; i < arr.count; i++)
    {
        if (max < arr[i])
        {
            max = arr[i];
        }
    }
    
    NSLog(@"%@",max);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
