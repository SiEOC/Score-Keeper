//
//  ScoreViewController.m
//  Score Keeper
//
//  Created by Skyler Clark on 7/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ScoreViewController.h"

@interface ScoreViewController ()



@end

@implementation ScoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.view addSubview:_scrollView];
    
  ScoreViewController *scoreVC2  = [[ScoreViewController alloc] init];
    
    [self.navigationController pushViewController:scoreVC2 animated:YES];
    
    self.title = @"Score-Keeper";
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
