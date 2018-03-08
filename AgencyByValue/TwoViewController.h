//
//  TwoViewController.h
//  代理传值
//
//  Created by NERC on 2018/3/5.
//  Copyright © 2018年 G. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol GNResignDelegate <NSObject>

-(void)sendMessage:(NSString *)message;


@end


@interface TwoViewController : UIViewController

@property(nonatomic,assign)id<GNResignDelegate>deleagete;

@end
