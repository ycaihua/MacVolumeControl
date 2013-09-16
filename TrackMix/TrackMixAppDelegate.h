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
}

@property (assign) IBOutlet NSTextField *textField;
@property (assign) IBOutlet NSSlider *slider;
@property (assign) IBOutlet NSWindow *window;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;

@end
