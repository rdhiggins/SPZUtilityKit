//
//  SPZDates.swift
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

import Foundation

public func SPZLocalDateFormatter() -> NSDateFormatter {
    var df = NSDateFormatter()

    df.dateFormat = "HH:mm:ss zzzZZZ"

    return df
}

public func SPZGMTDateFormatter() -> NSDateFormatter {
    var df = NSDateFormatter()

    df.dateFormat = "HH:mm:ss zzzZZZ"
    df.timeZone = NSTimeZone(abbreviation: "GMT")

    return df
}

public func SPZUTCDateFormatter() -> NSDateFormatter {
    var df = NSDateFormatter()

    df.dateFormat = "HH:mm:ss zzzZZZ"
    df.timeZone = NSTimeZone(abbreviation: "UTC")

    return df
}

public func SPZISODateFormatter() -> NSDateFormatter {
    var df = NSDateFormatter()

    df.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    var locale = NSLocale(localeIdentifier: "en_US_POSIX")
    df.timeZone = NSTimeZone(name: "UTC")
    df.locale = locale

    return df
}
