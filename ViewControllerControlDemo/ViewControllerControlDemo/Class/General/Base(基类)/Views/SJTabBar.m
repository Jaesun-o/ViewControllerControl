//
//  SJTabBar.m
//  ViewControllerControlDemo
//
//  Created by Jaesun on 2017/9/23.
//  Copyright © 2017年 S.J. All rights reserved.
//

#import "SJTabBar.h"

@interface SJTabBar ()
    
@property (nonatomic, weak) UIButton *plusBtn;

@end

@implementation SJTabBar

- (instancetype)init
{
    if (self = [super init]) {
        self.barTintColor = [UIColor whiteColor];
    }
    return self;
}

@end
