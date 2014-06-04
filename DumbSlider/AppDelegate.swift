//
//  AppDelegate.swift
//  DumbSlider
//
//  Created by Jonathan Rothwell on 04/06/2014.
//  Copyright (c) 2014 Jonathan Rothwell. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
	@IBOutlet var window: NSWindow

    @IBOutlet var textField : NSTextField
    @IBOutlet var slider : NSSlider
    
    var track : Track?

    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        track = Track() // instantiate our Track
        self.updateUserInterface()
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Nothing to see here
    }
    
    func updateUserInterface() {
        if self.track {
            self.textField.stringValue = String(self.track!.volume)
            self.slider.floatValue = self.track!.volume
        }
        
    }

    @IBAction func mute(sender : AnyObject) {
        if self.track {
            self.track!.mute()
            self.updateUserInterface()

        }
    }

    @IBAction func takeFloatValueForVolumeFrom(sender : AnyObject) {
        if self.track {
            var newValue = sender.floatValue
            self.track!.volume = newValue
            self.updateUserInterface()
        }
    }
    
}

