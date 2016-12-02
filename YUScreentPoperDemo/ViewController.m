//
//  ViewController.m
//  YUScreentPoperDemo
//
//  Created by yxy on 14/12/8.
//  Copyright (c) 2014年 XIAYUN.YE. All rights reserved.
//

#import "ViewController.h"
#import "UIWindow+YUBottomPoper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * btn1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 60)];
    
    [btn1 setTitle:@"按钮1" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(btn1touch) forControlEvents:UIControlEventTouchUpInside];
    
    btn1.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    
    [self.view  addSubview:btn1];
    
    UIButton * btn2= [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 100, 60)];
    
    [btn2 setTitle:@"按钮2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(btn2Touch) forControlEvents:UIControlEventTouchUpInside];
    
    btn2.backgroundColor = [UIColor lightGrayColor];
    
    [self.view  addSubview:btn2];
    
    
  
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)btn1touch{

    [self.view.window  showPopWithButtonTitles:@[@"评论",] styles:@[YUDefaultStyle] whenButtonTouchUpInSideCallBack:^(int index  ) {
        
    }];
}

-(void)btn2Touch{

    [self.view.window  showPopWithButtonTitles:@[@"置顶",@"修改",@"删除"] styles:@[YUDefaultStyle,YUDefaultStyle,YUDangerStyle] whenButtonTouchUpInSideCallBack:^(int index  ) {
        
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com 
