//
//  ViewController.m
//  CALayer
//
//  Created by tom.zhu on 2017/8/25.
//  Copyright © 2017年 TZ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)tap:(id)sender {
    /*
    CATransform3D t = self.imageView.layer.transform;
    
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = -1 / 1000;
    transform = CATransform3DRotate(transform, 45 * M_PI / 180 , 1, 1, 0);
    
    if (CATransform3DEqualToTransform(t, CATransform3DIdentity)) {
        
    }else {
        transform = CATransform3DIdentity;
    }
    
    [UIView animateWithDuration:.2f animations:^{
        self.imageView.layer.transform = transform;
    }];
*/
    CATransform3D t = self.view.layer.sublayerTransform;
    
    CATransform3D transform = CATransform3DIdentity;
    transform.m34 = -1 / 1000;
    transform = CATransform3DRotate(transform, 45 * M_PI / 180 , 1, 1, 0);
    
    if (CATransform3DEqualToTransform(t, CATransform3DIdentity)) {
        
    }else {
        transform = CATransform3DIdentity;
    }
    
    [UIView animateWithDuration:.2f animations:^{
        self.view.layer.sublayerTransform = transform;
    }];
}

@end
