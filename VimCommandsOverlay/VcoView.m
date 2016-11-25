//
//  VcoView.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoView.h"

@implementation VcoView

-(id)initWithCoder:(NSCoder *)coder
{
    self =[super initWithCoder:coder];
    if (self != nil)
        {
        // indicate window will have transparency
        self.window.opaque = NO;
        }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    NSLog(@"%s", __func__);

    [super drawRect:dirtyRect];

    // clear background window to transparent
    NSRectFillUsingOperation(dirtyRect, NSCompositeClear);

    // create gradient using stored alpha value
    NSColor *colorStart = [NSColor colorWithRed:0
                                          green:0
                                           blue:0
                                          alpha:self.backgroundAlpha];
    NSColor *colorFinal = [NSColor colorWithRed:0.2
                                          green:0.2
                                           blue:0.3
                                          alpha:self.backgroundAlpha];
    NSGradient *gradient = [[NSGradient alloc] initWithStartingColor:colorStart
                                                         endingColor:colorFinal];

    // fill view with gradient
    [gradient drawInRect:dirtyRect
                   angle:90];
}

@end
