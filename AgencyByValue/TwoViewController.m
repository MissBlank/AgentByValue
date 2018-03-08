//
//  TwoViewController.m
//  代理传值
//
//  Created by NERC on 2018/3/5.
//  Copyright © 2018年 G. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController (){
    
    UITextField * textField;
    UIButton * lastBtn;
}



@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"twoViewController";
    self.view.backgroundColor=[UIColor grayColor];
    // Do any additional setup after loading the view.
    
    
    textField=[[UITextField alloc]init];
    textField.frame=CGRectMake(ScreenWidth/2, 200, 100, 40);
    textField.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:textField];
    
    lastBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    lastBtn.frame=CGRectMake(ScreenWidth/2, ScreenHeight/2, 80, 40);
    [lastBtn setTitle:@"last" forState:UIControlStateNormal];
    lastBtn.backgroundColor=[UIColor cyanColor];
    [lastBtn addTarget:self action:@selector(lastBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:lastBtn];
    

    
    
}



-(void)lastBtnAction{
    
    
    
    if (self.deleagete&&[self.deleagete respondsToSelector:@selector(sendMessage:)]) {
        
        [self.deleagete sendMessage:textField.text];
    }
    
    
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
