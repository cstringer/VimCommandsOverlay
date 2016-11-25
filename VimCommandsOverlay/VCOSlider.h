//
//  VCOSlider.h
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ViewController.h"

@interface VCOSlider : NSSlider  <NSControlTextEditingDelegate>

@property (weak, nonatomic) ViewController *viewController;

@end
