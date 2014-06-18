//
//  TrackTest.swift
//  DumbSlider
//
//  Copyright © 2014 Jonathan Rothwell. See COPYING.md for licence
//

import XCTest
import DumbSlider

class TrackTest: XCTestCase {
    
    var track: Track?

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
			let vol: Float = track!.volume
            XCTAssertEqual(vol, 0.0, "Volume was \(vol), not equal to 0.0", file: "Track.swift", line: 5)
        }
    }

}
