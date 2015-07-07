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

/* 
 	    Create an addScoreView method that will add a UIView to the scrollView xx
	•	In the method Initialize a UIView called view xx
 
Initialize a UITextField for name, a UILabel for score, and a UIStepper for a button
	•	Lay them out by setting their frames in the new view
 Add that view to the scrollview
	•	You'll want to adjust the properties of each of those controls:
	◦	Placeholder text for the textfields
	◦	Min and max values for the stepper
 */

@implementation ScoreViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:_scrollView];
     
    self.title = @"Score-Keeper";
    
    // To change color of title in a navigation bar.
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor blueColor]};
    
    
    self.view.backgroundColor = [UIColor purpleColor];
    
}

-(UIView *)addScrolView:(UIView *)view
{
    UIView *newView = view;
    
    return newView;
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
