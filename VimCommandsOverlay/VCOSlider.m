//
//  VCOSlider.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "VCOSlider.h"

@interface VCOSlider ()

@end

@implementation VCOSlider

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (void)controlTextDidChange:(NSNotification *)obj
{
    NSLog(@"%@", obj);
}

- (IBAction)sliderChanged:(id)sender {
    NSLog(@"%@", sender);
}

@end
