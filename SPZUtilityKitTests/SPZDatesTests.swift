//
//  SPZDatesTests.swift
//  SPZUtilityKit
//
//  Created by Rodger Higgins on 5/26/15.
//  Copyright (c) 2015 Spazstik Software. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

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
        var local = SPZLocalDateFormatter()
        XCTAssertEqual("HH:mm:ss zzzZZZ", local.dateFormat, ".dateFormat should be set to \"HH:mm:ss zzzZZZ\"")
    }

    func testGMTDateFormatter() {
        var gmt = SPZGMTDateFormatter()

        XCTAssertEqual("HH:mm:ss zzzZZZ", gmt.dateFormat, ".dateFormat should be set to \"HH:mm:ss zzzZZZ\"")
        XCTAssertEqual(NSTimeZone(abbreviation: "GMT")!, gmt.timeZone, ".timeZone should be set to \"GMT\"")
    }

    func testUTCDateFormatter() {
        var utc = SPZUTCDateFormatter()

        XCTAssertEqual("HH:mm:ss zzzZZZ", utc.dateFormat, ".dateFormat should be set to \"HH:mm:ss zzzZZZ\"")
        XCTAssertEqual(NSTimeZone(abbreviation: "UTC")!, utc.timeZone, ".timeZone should be set to \"UTC\"")
    }

    func testISODateFormatter() {
        var iso = SPZISODateFormatter()
        var locale = NSLocale(localeIdentifier: "en_US_POSIX")

        XCTAssertEqual("yyyy-MM-dd'T'HH:mm:ssZZZZZ", iso.dateFormat, ".dateFormat should be set to \"yyyy-MM-dd'T'HH:mm:ssZZZZZ\"")
        XCTAssertEqual(NSTimeZone(abbreviation: "UTC")!, iso.timeZone, ".timeZone should be set to \"UTC\"")
        XCTAssertEqual(locale.localeIdentifier, iso.locale.localeIdentifier, ".local should be set to \"en_US_POSIZ\"")
    }
}
