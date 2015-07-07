//
//  ScoreViewController.h
//  Score Keeper
//
//  Created by Skyler Clark on 7/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ScoreViewController : UIViewController

@property (nonatomic,strong)UIScrollView *scrollView;
//@property (nonatomic,strong)UITextField *nameTextField;
//@property (nonatomic,strong)UILabel *scoreLabel;
//@property (nonatomic,strong)UIStepper *decrementOrIncrementButton;
//@property (nonatomic,assign)NSUInteger value; // Score Value

-(UIView *)addScrolView:(UIView *)view;


@end
