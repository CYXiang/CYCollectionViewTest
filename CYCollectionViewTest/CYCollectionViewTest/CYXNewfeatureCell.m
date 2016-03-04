//
//  CYXNewfeatureCell.m
//  CYCollectionViewTest
//
//  Created by apple开发 on 16/3/4.
//  Copyright © 2016年 cyx. All rights reserved.
//

#import "CYXNewfeatureCell.h"

@interface CYXNewfeatureCell ()


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CYXNewfeatureCell

- (void)setImage:(UIImage *)image
{
    _image = image;
    //为imageView赋值
    self.imageView.image = image;
}


@end
