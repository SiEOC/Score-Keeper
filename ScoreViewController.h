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


- (void)addScoreView:(NSInteger)index;


@end
