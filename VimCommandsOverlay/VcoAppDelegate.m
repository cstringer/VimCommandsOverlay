//
//  VcoAppDelegate.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VcoAppDelegate.h"

@interface VcoAppDelegate ()

@end

@implementation VcoAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSLog(@"%s", __func__);

    /* Initialize NSUserDefaults: register initial values */
    if ([NSUserDefaults standardUserDefaults] == nil)
        {
        NSDictionary *dictDefaults = [NSDictionary dictionaryWithObjectsAndKeys:
                                      [NSNumber numberWithFloat:VVC_DEF_BG_OPACITY], VVC_UD_KEY_BG_OPACITY,
                                      [NSNumber numberWithFloat:VVC_DEF_WIN_WIDTH],  VVC_UD_KEY_WIN_WIDTH,
                                      [NSNumber numberWithFloat:VVC_DEF_WIN_HEIGHT], VVC_UD_KEY_WIN_HEIGHT,
                                      nil];
        [[NSUserDefaults standardUserDefaults] registerDefaults:dictDefaults];
        }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    NSLog(@"%s", __func__);
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
    NSLog(@"%s", __func__);
    return YES;
}

@end
