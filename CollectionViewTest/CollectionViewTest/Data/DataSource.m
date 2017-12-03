//
//  DataSource.m
//  CollectionViewTest
//
//  Created by 박찬웅 on 2017. 12. 3..
//  Copyright © 2017년 chanwoong. All rights reserved.
//

#import "DataSource.h"

@interface DataSource()



@end

@implementation DataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dataArray = [[NSMutableArray alloc]initWithObjects:@"A",@"B",@"뚜레쥬르",@"D",@"아이폰X",@"F",@"스타벅스",@"아주 긴 문장 ㅋㅋㅋ",@"팔만대장경",nil];
        
    }
    return self;
}
- (NSInteger)numberOfSection
{
    return 1;
}

- (NSInteger)numberOfItem
{
    return self.dataArray.count;
}
- (void)moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath destinationIndexPath:(NSIndexPath *)destinationIndexPath
{
    if (sourceIndexPath.item == destinationIndexPath.item) {
        return;
    }
    
    NSIndexPath *index = [self.dataArray objectAtIndex:sourceIndexPath.item];
    [self.dataArray removeObjectAtIndex:sourceIndexPath.item];
    [self.dataArray insertObject:index atIndex:destinationIndexPath.item];
    
}
@end
