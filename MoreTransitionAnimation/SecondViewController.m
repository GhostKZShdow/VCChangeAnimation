//
//  SecondViewController.m
//  MoreTransitionAnimation
//
//  Created by 龙邦 on 16/8/19.
//  Copyright © 2016年 longbang. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()<ThirdViewControllerDelegate,UIViewControllerTransitioningDelegate>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _dismissAnimation = [[DismissAnimation alloc]init];
    _presentAnimation = [[PresentAnimation alloc]init];
}
- (IBAction)firstBtnClicked {
    if (self.delegate && [self.delegate respondsToSelector:@selector(SecondViewControllerBackBtnClicked)]) {
        [self.delegate SecondViewControllerBackBtnClicked];
    }
}
- (IBAction)secBtnClicked {
    ThirdViewController *thirVC = [[ThirdViewController alloc]init];
    thirVC.delegate = self;
    thirVC.transitioningDelegate = self;
    [self presentViewController:thirVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark ThirdViewControllerDelegate
- (void)ThirdViewControllerBackBtnClicked{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return self.presentAnimation;
}

-(id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return self.dismissAnimation;
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
