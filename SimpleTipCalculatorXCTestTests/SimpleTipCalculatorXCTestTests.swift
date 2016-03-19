//
//  SimpleTipCalculatorXCTestTests.swift
//  SimpleTipCalculatorXCTestTests
//
//  Created by Mihail Șalari on 19.03.2016.
//  Copyright © 2016 PlatinumCode. All rights reserved.
//

import UIKit
import XCTest

class SimpleTipTest: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUp() {
        calculator = Calculator()
    }
    
    override func tearDown() {
        print("Finished a test.")
    }
    
    func testAllZerosShouldReturnZero() {
        
        
        let result = calculator.calculateTip(0, taxPercentage: 0, tipPercentage: 0)
        XCTAssertEqual(result!, 0, "Valie shoul be 0")
    }
    
    
    func testNonZeroBillWithZeroTaxShouldReturnBill() {
        
        let result = calculator.calculateTip(20, taxPercentage: 0, tipPercentage: 0)
        XCTAssertEqual(result! , 0, "Value shoul be 0")
    }
    
    
    
    func testShouldThrowException() {
        
        assertThrows({
            calculator.calculateTip(-1, taxPercentage: 0, tippercentage: 0)
        })
    }
    
    func assertThrows(closure: () -> ()) {
        //XCTAssertTrue(throws(closure), "This operation shoul")
        
        
    }
    
    
    func testSimplePerformance() {
        self.measureBlock() {
            NSThread.sleepForTimeInterval(1.0)
            self.calculator.calculateTip(20, taxPercentage: 0, tippercentage: 0)
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


















//@testable import SimpleTipCalculatorXCTest

//class SimpleTipCalculatorXCTestTests: XCTestCase {
//    
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//    
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
//    
//}


