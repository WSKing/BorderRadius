//
//  UIView+Radius.m
//  BorderRadius
//
//  Created by wsk on 2017/9/2.
//  Copyright © 2017年 wsk. All rights reserved.
//

#import "UIView+Radius.h"

@implementation UIView (Radius)
- (void)radiusWithCornaer:(UIRectCorner)whichCorner cornerRadius:(CGSize)cornerRadius {
    
    /**
     bezierPathWithRoundedRect 要切的frame [如果设置的frame和view.bounds不相等的话,那么应该是只能切一个左上角]
     byRoundingCorners 哪个角
     cornerRadii 角的大小 (当width和height不等时,以较小的那个值作为圆角)
     */
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:whichCorner cornerRadii:cornerRadius];
    CAShapeLayer *shapeLayer = [[CAShapeLayer alloc] init];
    shapeLayer.frame = self.bounds;
    shapeLayer.path = path.CGPath;
    self.layer.mask = shapeLayer;
}
@end
