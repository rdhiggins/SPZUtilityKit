//
//  Threads.swift
//  SPZUtilityKit
//
//  Created by Rodger Higgins on 5/26/15.
//  Copyright (c) 2015 Spazstik Software. All rights reserved.
//

import Foundation

public typealias SPZExecutionBlock = dispatch_block_t

public func SPZBackground(block: SPZExecutionBlock) {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), block)
}

public func SPZIsMainThread() -> Bool {
    return NSThread.isMainThread()
}

public func SPZMainThread(block: SPZExecutionBlock) {
    if SPZIsMainThread() {
        block()
    } else {
        dispatch_async(dispatch_get_main_queue(), block)
    }
}

public func SPZBackgroundDelay(delay: Double, block: SPZExecutionBlock) {
    dispatch_after(
        dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC))),
        dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0),
        block)
}

public func SPZDelay(delay: Double, block: SPZExecutionBlock) {
    dispatch_after(
        dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC))),
        dispatch_get_main_queue(),
        block)
}

public class SPZSerialExecution {
    private var _queue: dispatch_queue_t

    class var sharedStore: SPZSerialExecution {
        struct Singleton {
            static let instance: SPZSerialExecution = SPZSerialExecution()
        }

        return Singleton.instance
    }

    init() {
        _queue = dispatch_queue_create("SPZTrackerBackgroundSerial", dispatch_queue_attr_make_with_qos_class(DISPATCH_QUEUE_SERIAL, QOS_CLASS_BACKGROUND, -1))
    }

    public func Execute(block: SPZExecutionBlock) {
        dispatch_async(_queue, block)
    }
}

public class SPZLock {
    private var _semaphore: dispatch_semaphore_t

    init() {
        _semaphore = dispatch_semaphore_create(1)
    }

    deinit {
        //        dispatch_release(_semaphore)
    }

    public func lock() {
        dispatch_semaphore_wait(_semaphore, DISPATCH_TIME_FOREVER)
    }

    public func unlock() {
        dispatch_semaphore_signal(_semaphore)
    }
}
