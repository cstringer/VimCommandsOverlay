//
//  VcoViewController.h
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#define VVC_UD_KEY_BG_OPACITY   @"backgroundOpacity"
#define VVC_DEF_BG_OPACITY      0.75
#define VVC_MAX_BG_OPACITY      1.0
#define VVC_MIN_BG_OPACITY      0.0

#define VVC_UD_KEY_WIN_WIDTH    @"windowWidth"
#define VVC_DEF_WIN_WIDTH       590
#define VVC_MAX_WIN_WIDTH       1180
#define VVC_MIN_WIN_WIDTH       295

#define VVC_UD_KEY_WIN_HEIGHT   @"windowHeight"
#define VVC_DEF_WIN_HEIGHT      400
#define VVC_MAX_WIN_HEIGHT      800
#define VVC_MIN_WIN_HEIGHT      200

@interface VcoViewController : NSViewController

/*! Stores opacity slider value in user defaults, and updates main view. */
- (void)opacityChanged;

/*! Set the background opacity to the given value (1.0 = opaque, 0.0 = transparent) */
- (void)setBackgroundOpacity:(CGFloat)opacity useRelative:(BOOL)relative;

@end

