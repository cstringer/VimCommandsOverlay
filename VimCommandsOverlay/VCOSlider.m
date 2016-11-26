//
//  VCOSlider.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoSlider.h"

@interface VcoSlider ()

@end

@implementation VcoSlider

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

- (void)drawRect:(NSRect)dirtyRect
{
    NSLog(@"%s", __func__);
    [super drawRect:dirtyRect];
}

- (void)sliderChanged
{
    NSLog(@"%s", __func__);

    // relay change events to view controller
    if (self.viewController != nil)
        {
        [self.viewController opacityChanged];
        }
}

@end
