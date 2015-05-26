//
//  SPZDatesTests.swift
//  SPZUtilityKit
//
//  Created by Rodger Higgins on 5/26/15.
//  Copyright (c) 2015 Spazstik Software. All rights reserved.
//

import UIKit
import XCTest

class SPZDateTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testLocalDateFormatter() {
        var local = createLocalDateFormatter()
        XCTAssertEqual("HH:mm:ss zzzZZZ", local.dateFormat, ".dateFormat should be set to \"HH:mm:ss zzzZZZ\"")
    }

    func testGMTDateFormatter() {
        var gmt = createGMTDateFormatter()

        XCTAssertEqual("HH:mm:ss zzzZZZ", gmt.dateFormat, ".dateFormat should be set to \"HH:mm:ss zzzZZZ\"")
        XCTAssertEqual(NSTimeZone(abbreviation: "GMT")!, gmt.timeZone, ".timeZone should be set to \"GMT\"")
    }

    func testUTCDateFormatter() {
        var utc = createUTCDateFormatter()

        XCTAssertEqual("HH:mm:ss zzzZZZ", utc.dateFormat, ".dateFormat should be set to \"HH:mm:ss zzzZZZ\"")
        XCTAssertEqual(NSTimeZone(abbreviation: "UTC")!, utc.timeZone, ".timeZone should be set to \"UTC\"")
    }

    func testISODateFormatter() {
        var iso = createISODateFormatter()
        var locale = NSLocale(localeIdentifier: "en_US_POSIX")

        XCTAssertEqual("yyyy-MM-dd'T'HH:mm:ssZZZZZ", iso.dateFormat, ".dateFormat should be set to \"yyyy-MM-dd'T'HH:mm:ssZZZZZ\"")
        XCTAssertEqual(NSTimeZone(abbreviation: "UTC")!, iso.timeZone, ".timeZone should be set to \"UTC\"")
        XCTAssertEqual(locale.localeIdentifier, iso.locale.localeIdentifier, ".local should be set to \"en_US_POSIZ\"")
    }
}
