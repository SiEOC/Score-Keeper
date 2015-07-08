//
//  ScoreViewController.m
//  Score Keeper
//
//  Created by Skyler Clark on 7/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ScoreViewController.h"

static CGFloat margin = 20;
static CGFloat scoreViewHeight = 90;

@interface ScoreViewController () <UITextFieldDelegate>


@property (nonatomic, strong) NSMutableArray *scoreLabels; // Created a property for an Array thats mutable.

@end

@implementation ScoreViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    if () // change condition...,new laert at END and start..
//    {
//        UIAlertView *alertNewgame = [[UIAlertView alloc]initWithTitle:@"New Game" message:@"Lets Do Another Game!" delegate:nil cancelButtonTitle:@"Of Course" otherButtonTitles:nil];
//    }
    
    self.title = @"Score-Keeper";
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    
    self.scoreLabels = [NSMutableArray new];
    

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64)];
    
    [self.view addSubview:scrollView];
    
    self.scrollView = scrollView; // What does this do?
    
    // Call addScoreView 4 times, passing in index as parameter // Note "i" should equal number put inFirstVC # of players "name of game"
    for (NSInteger i = 0; i < 4; i++)
    {
        [self addScoreView:i];  // Call method on self 4 times
    }
    
    self.view.backgroundColor = [UIColor redColor];
}

    
- (void)addScoreView:(NSInteger)index
    {
        
        
        UITextField *nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 53, 100, 50)];  // on left side
        UIStepper *decrementOrIncrementStepper = [[UIStepper alloc] initWithFrame:CGRectMake(225, 65, 100, 50)]; // in middle
        UILabel *scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(110, 50, 100, 50)];  // is on right
        
        // TextField
        
        nameTextField.backgroundColor = [UIColor redColor];
        nameTextField.textColor = [UIColor whiteColor];
        nameTextField.tag = -20;
        nameTextField.delegate = self;
        nameTextField.placeholder = @"Competitor";

        
        // Stepper
        decrementOrIncrementStepper.backgroundColor = [UIColor redColor];
        decrementOrIncrementStepper.tintColor = [UIColor whiteColor];
        decrementOrIncrementStepper.wraps = YES;
        decrementOrIncrementStepper.autorepeat = YES;
        decrementOrIncrementStepper.maximumValue = 20;
        decrementOrIncrementStepper.minimumValue = -20;
        decrementOrIncrementStepper.tag = index;
        
        
        // Label
        scoreLabel.backgroundColor = [UIColor redColor];
        scoreLabel.textAlignment = NSTextAlignmentCenter;
        scoreLabel.textColor = [UIColor whiteColor];
        scoreLabel.text = @"0";
        
        [self.scoreLabels addObject:scoreLabel]; // Array with my 'dynamic' cells. // Adding a label to each "scorelabels"
        
        
        
        // Line That stretches across the width of the screen // Code From Other Project
        UIView *lineDivide = [[UIView alloc] initWithFrame:CGRectMake(0, scoreViewHeight - 1, self.view.frame.size.width, 1)];
        lineDivide.backgroundColor = [UIColor lightGrayColor];
        
        // My SubViews
        
        [self.view addSubview:nameTextField];
        [self.view addSubview:decrementOrIncrementStepper];
        [self.view addSubview:scoreLabel];
        [self.view addSubview:lineDivide];
        [self.scrollView addSubview:_view]; // Add All Labels to Scroll View
        

        //  Actions & Methods
        [decrementOrIncrementStepper addTarget:self action:@selector(scoreStepperChanged:) forControlEvents:UIControlEventValueChanged];
    }
    
- (void)scoreStepperChanged:(id)sender
    {
        
       
        UIStepper *stepper = sender;
        
        NSInteger index = stepper.tag;
        
     
        double value = [stepper value];
        
        // Initialize UILabel as a scoreLabel from our scoreLabels array property with an index corresponding to the stepper on that line
        UILabel *scoreLabel = self.scoreLabels[index];
        
        // Update the label text with the new stepper value
        scoreLabel.text = [NSString stringWithFormat:@"%d", (int)value];
    }
    
    
- (BOOL)textFieldShouldReturn:(UITextField *)textField
    {
        [textField resignFirstResponder];
        return YES;
    }
    


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}


@end
