//
//  ScoreViewController.m
//  Score Keeper
//
//  Created by Skyler Clark on 7/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ScoreViewController.h"

@interface ScoreViewController ()

@property (nonatomic, assign) NSInteger totalPoints;

@end

/* 
 
 

 Add that view to the scrollview
	•	You'll want to adjust the properties of each of those controls:
	◦	Placeholder text for the textfields
	◦	Min and max values for the stepper
 
 UIScrollView *scrollView;

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
    
    UITextField *nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 150, 240, 50)];  // on left side
    UIStepper *decrementOrIncrementStepper = [[UIStepper alloc] initWithFrame:CGRectMake(0, 65, 100, 50)]; // in middle
    UILabel *scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(240, 50, 80, 50)];  // is on right
    

    // TextField
    nameTextField.backgroundColor = [UIColor redColor];
    nameTextField.textColor = [UIColor whiteColor];
    nameTextField.text = @"Text Field";
    
    
    
    
    // Stepper
    decrementOrIncrementStepper.backgroundColor = [UIColor redColor];
    decrementOrIncrementStepper.tintColor = [UIColor whiteColor];
    
    // Stepepr Decrement & Increment Properties
    
    decrementOrIncrementStepper.wraps = YES;
    decrementOrIncrementStepper.autorepeat = YES;
    decrementOrIncrementStepper.maximumValue = 20;
    
    
    // Label
    scoreLabel.backgroundColor = [UIColor redColor];
    scoreLabel.textColor = [UIColor whiteColor];
    
    float totalPoints = [scoreLabel.text floatValue];
    
//    scoreLabel.text =  [[NSString stringWithFormat:@"%2hu", (unsigned short)totalPoints]];

    
    
    // Text Field Needs Delegate
    [nameTextField resignFirstResponder];
    
    
    
    
    
    // My SubViews
    
    [self.view addSubview:nameTextField];
    [self.view addSubview:decrementOrIncrementStepper];
    [self.view addSubview:scoreLabel];
    
    self.view.backgroundColor = [UIColor purpleColor];
    
  
   
 
    
}

-(UIView *)addScrolView:(UIView *)view referencePassed:(NSInteger)indexPaths;
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
