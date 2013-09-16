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
@synthesize mute;
@synthesize muted;
@synthesize lastLevel;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)mute:(id)sender {
    
    if(self.muted){
        
        self.muted = NO; 
        NSLog(@"Unmuted");
        
        [self.slider setFloatValue: self.lastLevel];
        [self.textField setFloatValue: self.lastLevel];
        
    } else {
        
        self.muted = YES;        
        NSLog(@"Muted");   
        
        self.lastLevel = roundf([self.slider floatValue]);
        
        [self.slider setFloatValue: 0];
        [self.textField setFloatValue: 0];
        
    }
    
}

- (void)setMuteButtonState {
    
    if(self.muted){
        [self.mute setState:1];
    } else {
        [self.mute setState:0];
    }
    
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    
    NSString *senderName = nil;
    
    if (sender == self.textField) {
        
        senderName = @"textField";
        
        [self.slider setFloatValue: [sender floatValue]];
        
    } else {
        
        senderName = @"slider";
    
        [self.textField setFloatValue: roundf([sender floatValue])];
        
    }
    
    if(roundf([sender floatValue]) == 0){
        self.muted = YES; 
    } else {
        self.muted = NO; 
    }
    
    [self setMuteButtonState];
    
    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
    
}
@end
