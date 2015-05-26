//
//  Conversion.swift
//  SPZUtilityKit
//
//  Created by Rodger Higgins on 5/26/15.
//  Copyright (c) 2015 Spazstik Software. All rights reserved.
//

import Foundation


public extension String {
    public func toDouble() -> Double? {
        let scanner = NSScanner(string: self)
        var double: Double = 0

        if scanner.scanDouble(&double) {
            return double
        }

        return nil
    }

    public func toFloat() -> Float? {
        let scanner = NSScanner(string: self)
        var float: Float = 0

        if scanner.scanFloat(&float) {
            return float
        }

        return nil
    }

    public func toUInt() -> UInt? {
        if let val = self.trim().toInt() {
            if val >= 0 {
                return UInt(val)
            }
        }

        return nil
    }

    public func toBool() -> Bool? {
        let text = self.trim().lowercaseString
        if text == "true" || text == "false" || text == "yes" || text == "no" {
            return (text as NSString).boolValue
        }

        return nil
    }
}