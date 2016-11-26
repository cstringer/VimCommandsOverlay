//
//  VcoViewController.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoViewController.h"
#import "VcoMainView.h"
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

    // store view controller instance references
    [self.mainView setViewController:self];
    [self.opacitySlider setViewController:self];

    // set opacity slider to user default value
    self.opacitySlider.floatValue = [[NSUserDefaults standardUserDefaults] floatForKey:VVC_UD_KEY_BG_OPACITY];

    // update view opacity
    [self opacityChanged];

    /*
    NSRect frameRect = NSMakeRect(0, 0,
                                  [[NSUserDefaults standardUserDefaults] floatForKey:VVC_UD_KEY_WIN_WIDTH],
                                  [[NSUserDefaults standardUserDefaults] floatForKey:VVC_UD_KEY_WIN_HEIGHT]
                                  );
    [self.mainView.window setFrame:frameRect
                           display:YES];
     */
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

- (void)setBackgroundOpacity:(CGFloat)opacity useRelative:(BOOL)relative
{
    NSLog(@"%s", __func__);
    if (relative == YES)
        {
        self.opacitySlider.floatValue += opacity;
        }
    else
        {
        self.opacitySlider.floatValue = opacity;
        }
    [self opacityChanged];
}

@end
