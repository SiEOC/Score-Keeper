//
//  ScoreViewController.h
//  Score Keeper
//
//  Created by Skyler Clark on 7/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ScoreViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic,strong)UIScrollView *scrollView;
@property (nonatomic,strong)NSMutableArray *allScoreLables;


-(UIView *)addScrolView:(UIView *)view referencePassed:(NSInteger)indexPaths;


@end
