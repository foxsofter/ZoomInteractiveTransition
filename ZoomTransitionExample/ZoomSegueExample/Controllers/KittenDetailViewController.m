//
//  KittenDetailViewController.m
//  ZoomSegueExample
//
//  Created by Denys Telezhkin on 29.06.14.
//  Copyright (c) 2014 Denys Telezhkin. All rights reserved.
//

#import "KittenDetailViewController.h"
#import "ZoomTransitionProtocol.h"

@interface KittenDetailViewController () <ZoomTransitionProtocol>

@property (weak, nonatomic) IBOutlet UIImageView *kittenImageView;
@property (weak, nonatomic) IBOutlet UILabel *kittenLabel;

@end

@implementation KittenDetailViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.kittenImageView setImage:self.kittenImage];
    self.kittenLabel.text = self.kittenName;
}

#pragma mark - ZoomTransitionProtocol

-(UIView *)viewForZoomTransition:(ZoomTransition *)transition
{
    return self.kittenImageView;
}

@end
