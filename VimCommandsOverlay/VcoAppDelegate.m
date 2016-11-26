//
//  AppDelegate.m
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

    /* Initialize NSUserDefaults: register initial values */
    if ([NSUserDefaults standardUserDefaults] == nil)
        {
        NSDictionary *dictDefaults = [NSDictionary dictionaryWithObjectsAndKeys:
                                      [NSNumber numberWithFloat:VVC_DEF_BG_OPACITY], VVC_UD_KEY_BG_OPACITY,
                                      nil];
        [[NSUserDefaults standardUserDefaults] registerDefaults:dictDefaults];
        }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
    return YES;
}

@end
