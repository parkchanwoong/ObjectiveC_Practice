//
//  DataSource.h
//  CollectionViewTest
//
//  Created by 박찬웅 on 2017. 12. 3..
//  Copyright © 2017년 chanwoong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataSource : NSObject

@property NSMutableArray *dataArray;

- (NSInteger)numberOfSection;
- (NSInteger)numberOfItem;
- (void)moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath destinationIndexPath:(NSIndexPath *)destinationIndexPath;
@end
