//
//  Boolean_CalculatorTests.swift
//  Boolean CalculatorTests
//
//  Created by Vito Borghi on 23/11/2023.
//

//Create a boolean calculator that takes in values, accepts AND | OR | NOT logic gates

import XCTest
@testable import Boolean_Calculator

final class Boolean_CalculatorTests: XCTestCase {
    
    func testGivenTRUEWhenAskedValueReturnstrue() {
        let sample = "true"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), true)
    }
    
    func testGivenFALSEWhenAskedValueReturnsfalse() {
        let sample = "false"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), false)
    }
    
    func testGivenInvalidInputWhenAskedValueReturnsNIL() {
        let sample = "invalid input"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), nil)
    }
    
    func testGivenNOTTRUEWhenAskedValueReturnsfalse() {
        let sample = "not true"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), false)
    }
}
