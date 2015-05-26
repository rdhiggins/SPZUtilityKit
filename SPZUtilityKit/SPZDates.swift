//
//  SPZDates.swift
//  SPZUtilityKit
//
//  Created by Rodger Higgins on 5/26/15.
//  Copyright (c) 2015 Spazstik Software. All rights reserved.
//

import Foundation

public class SPZLocalDateFormatter: NSDateFormatter {

    public override init() {
        super.init()

        self.dateFormat = "HH:mm:ss zzzZZZ"
    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.dateFormat = "HH:mm:ss zzzZZZ"
    }
}

public class SPZGMTDateFormatter: NSDateFormatter {

    public override init() {
        super.init()

        self.dateFormat = "HH:mm:ss zzzZZZ"
        self.timeZone = NSTimeZone(abbreviation: "GMT")

    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.dateFormat = "HH:mm:ss zzzZZZ"
        self.timeZone = NSTimeZone(abbreviation: "GMT")
    }
}

public class SPZUTCDateFormatter: NSDateFormatter {

    public override init() {
        super.init()

        self.dateFormat = "HH:mm:ss zzzZZZ"
        self.timeZone = NSTimeZone(name: "UTC")

    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.dateFormat = "HH:mm:ss zzzZZZ"
        self.timeZone = NSTimeZone(name: "UTC")
    }
}

public class SPZISODateFormatter: NSDateFormatter {

    public override init() {
        super.init()

        self.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        var locale = NSLocale(localeIdentifier: "en_US_POSIX")
        self.timeZone = NSTimeZone(name: "UTC")
        self.locale = locale
    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        var locale = NSLocale(localeIdentifier: "en_US_POSIX")
        self.timeZone = NSTimeZone(name: "UTC")
        self.locale = locale
    }
}
