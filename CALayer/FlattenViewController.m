//
//  FlattenViewController.m
//  CALayer
//
//  Created by tom.zhu on 2017/8/25.
//  Copyright © 2017年 TZ. All rights reserved.
//

#import "FlattenViewController.h"

@interface FlattenViewController ()
@property (nonatomic, weak) IBOutlet UIView *outerView;
@property (nonatomic, weak) IBOutlet UIView *innerView;
@end

@implementation FlattenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)tap:(id)sender {
//    CATransform3D outer = CATransform3DMakeRotation(M_PI_4, 0, 0, 1);
//    
//    CATransform3D inner = CATransform3DMakeRotation(-M_PI_4, 0, 0, 1);
//    
//    [UIView animateWithDuration:.2f animations:^{
//        self.outerView.layer.transform = outer;
//        self.innerView.layer.transform = inner;
//    }];
    
    
    
    CATransform3D outer = CATransform3DIdentity;
    outer.m34 = -1.0 / 500.0;
    outer = CATransform3DRotate(outer, M_PI_4, 0, 1, 0);
    
    [UIView animateWithDuration:1 animations:^{
        self.outerView.layer.transform = outer;
    }];
    //rotate the inner layer -45 degrees
    CATransform3D inner = CATransform3DIdentity;
    inner.m34 = -1.0 / 500.0;
    inner = CATransform3DRotate(inner, -M_PI_4, 0, 1, 0);
    
    [UIView animateWithDuration:1 animations:^{
        self.innerView.layer.transform = inner;
    }];
}

@end
