//
//  ViewController.h
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "VcoMainView.h"

#define VVC_UD_KEY_BG_OPACITY   @"backgroundOpacity"
#define VVC_DEF_BG_OPACITY      0.75

@interface VcoViewController : NSViewController

- (void)opacityChanged;

@end

