//
//  RotateViewController.m
//  CALayer
//
//  Created by tom.zhu on 2017/8/25.
//  Copyright © 2017年 TZ. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()

@end

@implementation RotateViewController
- (IBAction)tap:(UITapGestureRecognizer *)sender {
    UIView *v = self.navigationController.view;
    
    CATransform3D __block transform = CATransform3DIdentity;
    transform.m34 = -1.0 / 500.0;
    
    if (CATransform3DEqualToTransform(v.layer.transform, CATransform3DIdentity)) {
        [UIView animateWithDuration:.3f animations:^{
            transform = CATransform3DRotate(transform, 5.0 * M_PI / 180.0, 1, 0, 0);
            transform = CATransform3DScale(transform, 0.99, 0.99, 1);
            v.layer.transform = transform;
            NSLog(@"1: %@", [NSDate date]);
        } completion:^(BOOL finished) {
            transform = CATransform3DIdentity;
            transform = CATransform3DMakeScale(0.95f, 0.95f, 1);
            NSLog(@"2: %@", [NSDate date]);
            [UIView animateWithDuration:.3f animations:^{
                v.layer.transform = transform;
                NSLog(@"3: %@", [NSDate date]);
            }];
        }];
    }else {
        [UIView animateWithDuration:.3f animations:^{
            v.layer.transform = CATransform3DIdentity;
        }];
    }
}

@end
