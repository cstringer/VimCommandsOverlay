//
//  VcoOpacitySlider.h
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-27-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "VcoViewController.h"

@interface VcoOpacitySlider : NSSlider  <NSControlTextEditingDelegate>

@property (weak, nonatomic) VcoViewController *viewController;

@end
