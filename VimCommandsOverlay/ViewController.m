//
//  ViewController.m
//  VimCommandsOverlay
//
//  Created by Chris Stringer on 10-26-16.
//  Copyright © 2016 Chris Stringer. All rights reserved.
//

#import "ViewController.h"
#import "VCOSlider.h"

@interface ViewController ()

@property (strong) IBOutlet VcoView *vcView;
@property (strong) IBOutlet VCOSlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSColor *transparent = [NSColor colorWithCalibratedWhite:1.0 alpha:0.0];

    //[self.vcView setWantsLayer:YES];
    //[self.vcView.layer setBackgroundColor:[transparent CGColor]];
    //[self.vcView.window setOpaque:NO];
    //[self.vcView.window setBackgroundColor:transparent];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
