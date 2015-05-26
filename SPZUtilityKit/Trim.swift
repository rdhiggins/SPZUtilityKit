//
//  Trim.swift
//  SPZUtilityKit
//
//  Created by Rodger Higgins on 5/26/15.
//  Copyright (c) 2015 Spazstik Software. All rights reserved.
//

import Foundation


public extension String {
    public func ltrim(characterSet set: NSCharacterSet = NSCharacterSet.whitespaceAndNewlineCharacterSet()) -> String {
        if let range = rangeOfCharacterFromSet(set.invertedSet) {
            return self[range.startIndex..<endIndex]
        }

        return ""
    }

    public func rtrim(characterSet set: NSCharacterSet = NSCharacterSet.whitespaceAndNewlineCharacterSet()) -> String {
        if let range = rangeOfCharacterFromSet(set.invertedSet, options: NSStringCompareOptions.BackwardsSearch) {
            return self[startIndex..<range.endIndex]
        }

        return ""
    }

    public func trim(characterSet set: NSCharacterSet = NSCharacterSet.whitespaceAndNewlineCharacterSet()) -> String {
        return ltrim(characterSet: set).rtrim(characterSet: set)
    }
}