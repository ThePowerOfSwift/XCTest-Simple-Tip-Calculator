//
//  TipServiceTest.swift
//  SimpleTipCalculatorXCTest
//
//  Created by Mihail Șalari on 19.03.2016.
//  Copyright © 2016 PlatinumCode. All rights reserved.
//

import XCTest

class TipServiceTest: XCTestCase {
    
    func testWhenTipIsZerServiceShouldReturnNil() {
        
        class StubTipClaculator: Calculator {
            private func calculateTip(billAmount: Float?, taxPercentage: Float?, tipPercentage: Float?) -> Float? {
                return 0 as? Float
            }
        }
        
        let tipService = TipService(calc: StubTipClaculator())
        let tip = tipService.getTipValue(10, taxpercentage: 100, tipPercentage: 1000)
        XCTAssertNil(tip, "Returned value should be nil")
    }
    
    
    
    
}
