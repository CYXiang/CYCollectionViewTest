//
//  CYXNewfeatureViewController.m
//  CYCollectionViewTest
//
//  Created by apple开发 on 16/3/4.
//  Copyright © 2016年 cyx. All rights reserved.
//

#import "CYXNewfeatureViewController.h"
#import "CYXNewfeatureCell.h"
@interface CYXNewfeatureViewController ()

@end

@implementation CYXNewfeatureViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];

    // 定义大小
    layout.itemSize = CGSizeMake([UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height - 50);
    // 设置垂直间距
    layout.minimumLineSpacing = 0;
    // 设置滚动方向（默认垂直滚动）
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return [self initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([CYXNewfeatureCell class]) bundle:nil] forCellWithReuseIdentifier:reuseIdentifier];
    // 开启分页
    self.collectionView.pagingEnabled = YES;
    // 隐藏水平滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    // 取消弹簧效果
    self.collectionView.bounces = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark <UICollectionViewDataSource>


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CYXNewfeatureCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.image = [UIImage imageNamed:[NSString stringWithFormat:@"new_feature_%zd",indexPath.item+1]];
//    cell.backgroundColor = [UIColor blueColor];
    
    return cell;
}

#pragma mark - <UICollectionViewDelegate>
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"------%zd", indexPath.item);
}

@end
