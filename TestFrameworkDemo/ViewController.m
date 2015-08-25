//
//  ViewController.m
//  TestFrameworkDemo
//
//  Created by lingyohunl on 15/8/25.
//  Copyright (c) 2015年 yohunl. All rights reserved.
//

#import "ViewController.h"
#import <YohunlUtilsLib/YohunlUtilsLib.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    YONetwork *net = [YONetwork new];
    [net getGithubReposForUser:@"yohunl" withSuccess:^(id responseObject) {
        NSLog(@"getGithubReposForUser response = %@",responseObject);
    } failure:^(NSError *error) {
        NSLog(@"getGithubReposForUser error = %@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
