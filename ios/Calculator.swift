//
//  Calculator.swift
//  NativeModuleDemo
//
//  Created by Bhargav Lakkur Kusha Kumar on 12/27/24.
//

import Foundation
import React

@objc(Calculator)
class Calculator: NSObject {

    @objc
    func add(_ a: NSNumber, b: NSNumber, callback: @escaping RCTResponseSenderBlock) {
        let sum = a.doubleValue + b.doubleValue
        callback([NSNull(), sum])  // Sending the result back to JavaScript
    }

    static func requiresMainQueueSetup() -> Bool {
        return false
    }
}
