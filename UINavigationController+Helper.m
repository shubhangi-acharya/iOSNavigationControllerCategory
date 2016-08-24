//
//  UINavigationController+Helper.m
//  Sample
//
//  Created by Shubhangi Pandya on 3/8/16.
//  Copyright © 2016 Shubhangi. All rights reserved.

//

#import "UINavigationController+Helper.h"

@implementation UINavigationController (Helper)

- (void)setupAppearance:(UIColor *)color {
  // Default UINavigationBar appearance throughout the app
  [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor],
                                                             NSFontAttributeName : [UIFont fontWithName:@"Avenir-Heavy" size:15],
                                                             }];
  
  [self.navigationBar setTintColor:[UIColor whiteColor]];
  [self.navigationBar setBarTintColor:color];
  [self.navigationBar setTranslucent:NO];
  [self.navigationBar setBarStyle:UIBarStyleBlack];
  [[UIBarButtonItem appearanceWhenContainedIn: [UISearchBar class], nil] setTintColor:UIColorFromRGB(0xFFFFFF)];
  
  
  [[UIBarButtonItem appearance] setTintColor:UIColorFromRGB(0xFFFFFF)];
  [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:UIColorFromRGB(0xFFFFFF),
                                                         NSFontAttributeName:[UIFont fontWithName:@"Avenir-Light" size:15.0]
                                                         }
                                              forState:UIControlStateNormal];
  
  UIImage *myImage = [UIImage imageNamed:@"icon_BackArrow_Header"]; //set your backbutton imagename
  UIImage *backButtonImage = [myImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
  self.navigationItem.backBarButtonItem.title=@"";
  [[UINavigationBar appearance] setBackIndicatorImage:backButtonImage];
  [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:backButtonImage];
  [[UIBarButtonItem appearance]setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -66) forBarMetrics:UIBarMetricsDefault];

}
@end
