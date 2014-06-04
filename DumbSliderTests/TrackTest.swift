//
//  TrackTest.swift
//  DumbSlider
//
//  Created by Jonathan Rothwell on 04/06/2014.
//  Copyright (c) 2014 Jonathan Rothwell. All rights reserved.
//

import XCTest
import DumbSlider

class TrackTest: XCTestCase {
    
    var track : Track?

    override func setUp() {
        super.setUp()
        
        track = Track()
        
        XCTAssert(track, "Track not instantiated")
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testMute() {
        if track {
            track!.mute()
            var vol = Float(track!.volume)
            XCTAssertEqual(vol, 0.0, "Volume not equal to 0.0 :(", file: "Track.swift", line: 5)
        }
    }

}
