//
//  VcoView.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoView.h"

@implementation VcoView


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    
    self.window.opaque = NO;
    NSRectFillUsingOperation(dirtyRect, NSCompositeClear);

    NSColor *colorStart = [NSColor colorWithRed:0.2
                                          green:0.2
                                           blue:0.3
                                          alpha:1];
    NSColor *colorEnd = [NSColor colorWithRed:0
                                        green:0
                                         blue:0
                                        alpha:1];
    NSGradient *gradient = [[NSGradient alloc] initWithStartingColor:colorStart
                                                         endingColor:colorEnd];
    [gradient drawInRect:dirtyRect
                   angle:90];
}

@end
