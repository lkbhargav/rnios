import Foundation
import React

@objc(CalculatorModule)
class CalculatorModule: NSObject {

    @objc
    func add(_ a: NSNumber, b: NSNumber, callback: @escaping RCTResponseSenderBlock) {
        let sum = a.doubleValue + b.doubleValue
        callback([NSNull(), sum])  // Sending the result back to JavaScript
    }

    static func requiresMainQueueSetup() -> Bool {
        return false
    }
}
