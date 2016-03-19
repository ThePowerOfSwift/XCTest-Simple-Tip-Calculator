//
//  TipService.swift
//  SimpleTipCalculatorXCTest
//
//  Created by Mihail Șalari on 19.03.2016.
//  Copyright © 2016 PlatinumCode. All rights reserved.
//

import Foundation

class TipService: NSObject {
    
    let tipCalc: Calculator
    
    override init() {
        tipCalc = Calculator()
    }

    
    init(calc: Calculator) {
        tipCalc = calc
    }
    
    func getTipValue(billAmount: Float?, taxpercentage: Float?, tipPercentage: Float?) -> Float? {
        let tip = tipCalc.calculateTip(billAmount, taxPercentage: taxpercentage, tipPercentage: tipPercentage)
        return tip == 0 ? nil : tip
    }
    
    
    
    
    
}