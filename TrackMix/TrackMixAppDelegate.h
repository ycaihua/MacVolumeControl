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
}

@property (assign) IBOutlet NSWindow *window;

@end
