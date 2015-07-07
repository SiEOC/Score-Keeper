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
 
 

 Add that view to the scrollview
	•	You'll want to adjust the properties of each of those controls:
	◦	Placeholder text for the textfields
	◦	Min and max values for the stepper
 
 UIScrollView *scrollView;
 UITextField *nameTextField;
 UILabel *scoreLabel;
 UIStepper *decrementOrIncrementButton;
 
 */

@implementation ScoreViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Score-Keeper";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor blueColor]};
    
    
/*  Note:  Getters & Setters Are Active From Property */
    
    self.nameTextField.frame = CGRectMake(70, 10, 120, 55);
    self.scoreLabel.frame = CGRectMake(140, 10, 50, 50);
    self.decrementOrIncrementButton.frame = CGRectMake(200.00, 180, 50, 50);
    
    self.nameTextField.text = @"Name Field";
    self.nameTextField.textColor = [UIColor grayColor];
    self.nameTextField.backgroundColor = [UIColor yellowColor];
    
    
    self.scoreLabel.text = @"Score Label";
    self.scoreLabel.textColor = [UIColor grayColor];
    self.scoreLabel.backgroundColor = [UIColor greenColor];

    
    
   // Decrement Properties
 
    [self.decrementOrIncrementButton setCenter:CGPointMake(128, 128)];
    
    self.decrementOrIncrementButton.wraps = YES;
    self.decrementOrIncrementButton.autorepeat = YES;
    
    self.value = self.decrementOrIncrementButton.value;
    
    self.scoreLabel.text = [NSString stringWithFormat:@"%2lu", (unsigned long)self.value];

    self.decrementOrIncrementButton.maximumValue = 19;
    
    self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame));
   

    self.view.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.nameTextField];
    [self.view addSubview:self.scoreLabel];
    [self.view addSubview:self.decrementOrIncrementButton];
    
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
