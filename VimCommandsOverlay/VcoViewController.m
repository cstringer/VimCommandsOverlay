//
//  ViewController.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoViewController.h"
#import "VcoOpacitySlider.h"

@interface VcoViewController ()

@property (strong) IBOutlet VcoView     *vcView;
@property (strong) IBOutlet VcoOpacitySlider   *slider;

@end

@implementation VcoViewController

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
