//
//  ClientController.m
//  ViewControllerControlDemo
//
//  Created by Jaesun on 2017/9/23.
//  Copyright © 2017年 S.J. All rights reserved.
//

#import "ClientController.h"

@interface ClientController ()<UINavigationControllerDelegate>

@end

@implementation ClientController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor purpleColor];
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
