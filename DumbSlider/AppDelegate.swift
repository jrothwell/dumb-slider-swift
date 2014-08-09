//
//  AppDelegate.swift
//  DumbSlider
//
//  Copyright © 2014 Jonathan Rothwell. See COPYING.md for licence
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
	@IBOutlet var window: NSWindow?

    @IBOutlet var textField: NSTextField?
    @IBOutlet var slider: NSSlider?
	
	let track = Track()
	
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        updateUserInterface()
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Nothing to see here
    }
    
    func updateUserInterface() {
		if let theTextField = textField {
			theTextField.stringValue = NSString(format: "%2f", track.volume)
		}
		if let theSlider = slider {
			theSlider.floatValue = track.volume
		}
	}

    @IBAction func mute(sender : AnyObject) {
        track.mute()
        updateUserInterface()
    }

    @IBAction func takeFloatValueForVolumeFrom(sender : AnyObject) {
		let newValue = sender.floatValue
		track.volume = newValue
		updateUserInterface()
    }
    
}

