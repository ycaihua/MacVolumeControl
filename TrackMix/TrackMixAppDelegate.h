//
//  TrackMixAppDelegate.h
//  TrackMix
//
//  Created by Adam Currie on 02/08/2013.
//  Copyright 2013 DevelopStuff.net. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TrackMixAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSTextField *textField;
    NSSlider *slider;
    NSButton *mute;
    BOOL muted;
    float lastLevel;
}

@property (assign) IBOutlet NSTextField *textField;
@property (assign) IBOutlet NSSlider *slider;
@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSButton *mute;
@property BOOL muted;
@property float lastLevel;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (void)setMuteButtonState;

@end
