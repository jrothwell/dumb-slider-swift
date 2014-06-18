//
//  Track.swift
//  DumbSlider
//
//  Copyright © 2014 Jonathan Rothwell. See COPYING.md for licence
//

import Cocoa

class Track: NSObject {
    var volume: Float = 5.0
    
	func mute() {
        volume = 0.0
    }
}
