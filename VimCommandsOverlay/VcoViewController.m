//
//  VcoViewController.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoViewController.h"
#import "VcoOpacitySlider.h"

@interface VcoViewController ()

@property (strong) IBOutlet VcoMainView         *mainView;
@property (strong) IBOutlet VcoOpacitySlider    *opacitySlider;

@end

@implementation VcoViewController

- (void)viewDidLoad
{
    NSLog(@"%s", __func__);

    [super viewDidLoad];

    self.mainView.window.delegate = self;

    // store view controller instance reference in slider
    [self.opacitySlider setViewController:self];

    // set opacity slider to user default value
    self.opacitySlider.floatValue = [[NSUserDefaults standardUserDefaults] floatForKey:VVC_UD_KEY_BG_OPACITY];

    // update view opacity
    [self opacityChanged];
}

- (void)opacityChanged
{
    NSLog(@"%s", __func__);

    // get opacity from slider
    CGFloat opacity = self.opacitySlider.floatValue;
    NSLog(@" New value: %f", opacity);

    // store in user defaults
    [[NSUserDefaults standardUserDefaults] setFloat:opacity
                                             forKey:VVC_UD_KEY_BG_OPACITY];

    // set alpha value + update view rectangle
    [self.mainView setBackgroundAlpha:opacity];
    [self.mainView setNeedsLayout:YES];
    [self.mainView setNeedsDisplay:YES];
}

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize
{
    NSLog(@"%s", __func__);
    NSLog(@" toSize: %f x %f", frameSize.width, frameSize.height);

    NSSize newFrameSize;
    newFrameSize.width = MAX(frameSize.width, VVC_MIN_WINDOW_WIDTH);
    newFrameSize.height = MAX(frameSize.height, VVC_MIN_WINDOW_HEIGHT);

    return newFrameSize;
}

- (void)windowWillStartLiveResize:(NSNotification *)notification
{
    NSLog(@"%s", __func__);
}

@end
