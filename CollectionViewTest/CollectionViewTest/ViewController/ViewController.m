//
//  ViewController.m
//  CollectionViewTest
//
//  Created by 박찬웅 on 2017. 12. 3..
//  Copyright © 2017년 chanwoong. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "DataSource.h"

@interface ViewController () <UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectionView;

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;

@property DataSource *source;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 데이터 소스 초기화
    
    self.source = [[DataSource alloc] init];
    // 섹션 inset 조절
    self.layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    
    
    
}



# pragma mark - CollectionView Protocol

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return [self.source numberOfSection];;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.source numberOfItem];
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    CAShapeLayer *border = [CAShapeLayer layer];
    border.strokeColor = [UIColor blackColor].CGColor;
    border.fillColor = nil;
    border.lineDashPattern = @[@2, @3];
    border.frame = cell.bounds;
    border.path = [UIBezierPath bezierPathWithRoundedRect:cell.bounds cornerRadius:50.0].CGPath;
    [cell.layer addSublayer:border];
    
    cell.label.text = self.source.dataArray[indexPath.row];
    return cell;
}

- (IBAction)longPressGesture:(UILongPressGestureRecognizer *)sender {
    
    
    CGPoint point = [sender locationInView:self.mainCollectionView];
    
    NSIndexPath *longPressIndexPath = [self.mainCollectionView indexPathForItemAtPoint:point];
    
    switch (sender.state) {
            
        case UIGestureRecognizerStateBegan:
            [self.mainCollectionView beginInteractiveMovementForItemAtIndexPath:longPressIndexPath];
            break;
            
        case UIGestureRecognizerStateChanged:
            [self.mainCollectionView updateInteractiveMovementTargetPosition:point];
            break;
            
        case UIGestureRecognizerStateEnded:
            [self.mainCollectionView endInteractiveMovement];
            break;
            
        case UIGestureRecognizerStateCancelled:
            [self.mainCollectionView cancelInteractiveMovement];
            break;
            
        default:
            break;
    }
    
}

- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath
{
    [self.source moveItemAtIndexPath:sourceIndexPath destinationIndexPath:destinationIndexPath];
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    UILabel *label = self.source.dataArray[indexPath.row];
    
    return CGSizeMake(100, 50);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
