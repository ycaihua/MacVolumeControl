//
//  TrackMixAppDelegate.m
//  TrackMix
//
//  Created by Adam Currie on 02/08/2013.
//  Copyright 2013 DevelopStuff.net. All rights reserved.
//

#import "TrackMixAppDelegate.h"

@implementation TrackMixAppDelegate

@synthesize textField;
@synthesize slider;
@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)mute:(id)sender {
    
    NSLog(@"received a mute: message");
    
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    
    NSString *senderName = nil;
    
    if (sender == self.textField) {
        
        senderName = @"textField";
        
        [self.slider setDoubleValue: [sender floatValue]];
        
    } else {
        
        senderName = @"slider";
    
        [self.textField setFloatValue: lroundf([sender floatValue])];
        
    }
    
    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
    
}
@end
