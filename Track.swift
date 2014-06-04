//
//  Track.swift
//  DumbSlider
//
//  Created by Jonathan Rothwell on 04/06/2014.
//  Copyright (c) 2014 Jonathan Rothwell. All rights reserved.
//

import Cocoa

class Track: NSObject {
    var volume : Float! = 5.0
    
    func mute() {
        self.volume = 0.0
    }
}
