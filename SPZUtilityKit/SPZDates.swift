//
//  SPZDates.swift
//  SPZUtilityKit
//
//  Created by Rodger Higgins on 5/26/15.
//  Copyright (c) 2015 Spazstik Software. All rights reserved.
//

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
