//
//  FourViewController.h
//  MoreTransitionAnimation
//
//  Created by 龙邦 on 16/8/19.
//  Copyright © 2016年 longbang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FourViewControllerDelegate<NSObject>

- (void)FourViewControllerBackBtnClicked;

@end

@interface FourViewController : UIViewController

@property (nonatomic, assign) id delegate;

@end
