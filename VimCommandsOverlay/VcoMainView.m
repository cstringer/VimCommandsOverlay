//
//  VcoMainView.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoMainView.h"

@implementation VcoMainView

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self != nil)
        {
        [self.window setDelegate:self];
        }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    NSLog(@"%s", __func__);
    NSLog(@" %f x %f", dirtyRect.size.width, dirtyRect.size.height);

    // store in user defaults
    [[NSUserDefaults standardUserDefaults] setFloat:dirtyRect.size.width
                                             forKey:VVC_UD_KEY_WIN_WIDTH];
    // store in user defaults
    [[NSUserDefaults standardUserDefaults] setFloat:dirtyRect.size.height
                                             forKey:VVC_UD_KEY_WIN_HEIGHT];
    [super drawRect:dirtyRect];

    // clear background window to transparent
    self.window.opaque = NO;
    NSRectFillUsingOperation(dirtyRect, NSCompositeClear);

    // create gradient using alpha value
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

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize
{
    NSLog(@"%s", __func__);
    return frameSize;
}

- (void)scrollWheel:(NSEvent *)scrollEvent
{
    NSLog(@"%s", __func__);
    [self.viewController setBackgroundOpacity:(scrollEvent.deltaY * VMV_SCROLL_WHEEL_SENS)
                                  useRelative:YES];
}

@end
