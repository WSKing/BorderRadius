//
//  UIView+Radius.h
//  BorderRadius
//
//  Created by wsk on 2017/9/2.
//  Copyright © 2017年 wsk. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (Radius)
//内存少,渲染快
- (void)radiusWithCornaer:(UIRectCorner)whichCorner cornerRadius:(CGSize)cornerRadius;
@end
