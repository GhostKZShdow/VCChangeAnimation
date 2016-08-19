//
//  FirstViewController.h
//  MoreTransitionAnimation
//
//  Created by 龙邦 on 16/8/19.
//  Copyright © 2016年 longbang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DismissAnimation.h"
#import "PresentAnimation.h"

@interface FirstViewController : UIViewController

@property (nonatomic, strong) DismissAnimation *dismissAnimation;
@property (nonatomic, strong) PresentAnimation *presentAnimation;

@end
