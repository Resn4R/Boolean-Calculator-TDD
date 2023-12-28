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
    
    func testGivenNOTTRUEWhenAskedValueReturnsfalse() {
        let sample = "not true"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), false)
    }
    
    func testGivenNOTFALSEWhenAskedValueReturnsTrue() {
        let sample = "not false"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), true)
    }
    
    func testGivenTRUEANDFALSEWhenAskedValueReturnsFALSE() {
        let sample = "true and false"

        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), false)
    }
    
    func testGivenTRUEANDNOTFALSEWhenAskedValueReturnsTRUE() {
        let sample = "true and not false"

        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), true)
    }
    
    func testGivenTripleGateWhenAskedValueReturnsTRUE() {
        let sample = "true and true and not false"

        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), true)
    }
}
