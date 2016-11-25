//
//  ViewController.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "ViewController.h"
#import "VCOSlider.h"

@interface ViewController ()

@property (strong) IBOutlet VcoView     *vcView;
@property (strong) IBOutlet VCOSlider   *slider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSLog(@"%s", __func__);

    [super viewDidLoad];

    // store view controller instance reference in slider
    [self.slider setViewController:self];

    // update view opacity
    [self opacityChanged];
}

- (void)opacityChanged
{
    NSLog(@"%s", __func__);

    // set alpha value + update view rectangle
    [self.vcView setBackgroundAlpha:self.slider.floatValue];
    [self.vcView setNeedsLayout:YES];
    [self.vcView setNeedsDisplay:YES];
}


@end
