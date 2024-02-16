//
//  ConversionLogic.swift
//  Assignment6Trejo
//
//  Created by Christopher Joseph on 2/16/24.
//

import Foundation

struct ConversionLogic {
    
    var euroSwitchBool  = true
    var euroStatic      : Float = 0.928216
    
    var poundSwitchBool = true
    var poundStatic     : Float = 0.794801
    
    var yenSwitchBool   = true
    var yenStatic       : Float = 150.189138
    
    var francSwitchBool = true
    var francStatic     : Float = 0.880795
    
    mutating func setEuroSwitch(_ switchValue: Bool) {
        if switchValue {
            euroSwitchBool = true
        } else {
            euroSwitchBool = false
        }
    }
    
    mutating func setPoundSwitch(_ switchValue: Bool) {
        if switchValue {
            poundSwitchBool = true
        } else {
            poundSwitchBool = false
        }
    }
    
    mutating func setYenSwitch(_ switchValue: Bool) {
        if switchValue {
            yenSwitchBool = true
        } else {
            yenSwitchBool = false
        }
    }
    
    mutating func setFrancSwitch(_ switchValue: Bool) {
        if switchValue {
            francSwitchBool = true
        } else {
            francSwitchBool = false
        }
    }
    
    func euroConversion(_ input: Int) -> String {
        let amount = Float(input) * euroStatic
        let amountString = String(amount)
        return amountString
    }
    
    func poundConversion(_ input: Int) -> String {
        let amount = Float(input) * poundStatic
        let amountString = String(amount)
        return amountString
    }
    
    func yenConversion(_ input: Int) -> String {
        let amount = Float(input) * yenStatic
        let amountString = String(amount)
        return amountString
    }
    
    func francConversion(_ input: Int) -> String {
        let amount = Float(input) * francStatic
        let amountString = String(amount)
        return amountString
    }
                      
                      
}

