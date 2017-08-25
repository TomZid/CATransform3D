//
//  SublayerTransformViewController.m
//  CALayer
//
//  Created by tom.zhu on 2017/8/25.
//  Copyright © 2017年 TZ. All rights reserved.
//

#import "SublayerTransformViewController.h"

@interface SublayerTransformViewController ()
@property (nonatomic, weak) IBOutlet UIView *containerView;
@property (nonatomic, weak) IBOutlet UIView *layerView1;
@property (nonatomic, weak) IBOutlet UIView *layerView2;
@end

@implementation SublayerTransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)tap:(id)sender {
    CATransform3D perspective = CATransform3DIdentity;
    perspective.m34 = -1.0 / 500.0;
    self.containerView.layer.sublayerTransform = perspective;
    
    [UIView animateWithDuration:.2f animations:^{
        //rotate layerView1 by 45 degrees along the Y axis
        CATransform3D transform1 = CATransform3DMakeRotation(-M_PI_4, 1, 0, 0);
        self.layerView1.layer.transform = transform1;
        //rotate layerView2 by 45 degrees along the Y axis
        CATransform3D transform2 = CATransform3DMakeRotation(M_PI_4, 1, 0, 0);
        self.layerView2.layer.transform = transform2;
    }];
}

@end
