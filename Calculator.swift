//
//  Calculator.swift
//  SimpleTipCalculatorXCTest
//
//  Created by Mihail Șalari on 19.03.2016.
//  Copyright © 2016 PlatinumCode. All rights reserved.
//

import Foundation

class Calculator {
    
    func calculateTip(billAmount: Float?, taxPercentage: Float?, tipPercentage: Float?) -> Float? {
        
        /*
        if billAmount < 0 {
            let exception = NSException(name: "NegativeException", reason: "Bill ammount cannot be negative.", userInfo: nil)
            exception.raise()
        }
        */
        
        let bill = billAmount!
        let ptax = taxPercentage!
        let pTip = tipPercentage!
        
        let tax = bill * ptax
        let total = bill + tax
        let tip = total * pTip
        return tip
    }
    
}
