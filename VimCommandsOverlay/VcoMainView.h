//
//  VcoMainView.h
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "VcoViewController.h"

#define VMV_SCROLL_WHEEL_SENS   0.0125

@interface VcoMainView : NSView <NSWindowDelegate>

/*! Reference to the main view controller. */
@property (weak, nonatomic) VcoViewController *viewController;

/*! Opacity (alpha) value for the window background gradient. */
@property   CGFloat backgroundAlpha;

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize;

@end
