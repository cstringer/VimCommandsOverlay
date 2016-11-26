//
//  VcoOpacitySlider.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoOpacitySlider.h"

@interface VcoOpacitySlider ()

@end

@implementation VcoOpacitySlider

- (id)initWithCoder:(NSCoder *)coder
{
    NSLog(@"%s", __func__);

    self = [super initWithCoder:coder];
    if (self != nil)
        {
        // set target, action for change events
        [self setTarget:self];
        [self setAction:@selector(sliderChanged)];
        }
    return self;
}

/*! Relay change events to the main view controller. */
- (void)sliderChanged
{
    NSLog(@"%s", __func__);

    if (self.viewController != nil)
        {
        [self.viewController opacityChanged];
        }
}

@end
