//
//  ViewController.m
//  BorderRadius
//
//  Created by wsk on 2017/9/2.
//  Copyright © 2017年 wsk. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Radius.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *leftTopView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    leftTopView.backgroundColor = [UIColor redColor];
    [self.view addSubview:leftTopView];
    //加圆角
    [leftTopView radiusWithCornaer:UIRectCornerTopLeft cornerRadius:CGSizeMake(10, 10)];
    
  
}



@end
