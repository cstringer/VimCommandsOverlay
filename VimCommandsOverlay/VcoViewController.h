//
//  VcoViewController.h
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "VcoMainView.h"

#define VVC_UD_KEY_BG_OPACITY   @"backgroundOpacity"
#define VVC_DEF_BG_OPACITY      0.75

#define VVC_MIN_WINDOW_WIDTH    295
#define VVC_MIN_WINDOW_HEIGHT   200

@interface VcoViewController : NSViewController <NSWindowDelegate>

/*! Stores opacity slider value in user defaults, and updates main view. */
- (void)opacityChanged;

@end

