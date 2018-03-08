//
//  ViewController.m
//  代理传值
//
//  Created by NERC on 2018/3/5.
//  Copyright © 2018年 G. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"




@interface ViewController ()<GNResignDelegate>{
    
    UIButton * nextBtn;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"AgencyByValue";
    self.view.backgroundColor=[UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    nextBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn.frame=CGRectMake(ScreenWidth/2, ScreenHeight/2, 80, 40);
    [nextBtn setTitle:@"next" forState:UIControlStateNormal];
    nextBtn.backgroundColor=[UIColor cyanColor];
    [nextBtn addTarget:self action:@selector(nextBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:nextBtn];
    
    
}

-(void)nextBtnAction{
    
    TwoViewController * twoVC=[[TwoViewController alloc]init];
    twoVC.deleagete=self;
    [self.navigationController pushViewController:twoVC animated:YES];
    
}

#pragma mark GNResignDelegate
-(void)sendMessage:(NSString *)message
{
    [nextBtn setTitle:message forState:UIControlStateNormal];
    [self.view addSubview:nextBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
