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
    
    func testGivenTRUEORTRUEShouldReturnTRUE() {
        let sample = "true or true"

        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), true)
    }
    
    func testGivenTRUEORFALSEShouldReturnTRUE() {
        let sample = "true or false"

        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), true)
    }
    
    func testGivenFALSEORFALSEShouldReturnFALSE() {
        let sample = "false or false"

        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), false)
    }
    
    func testGivenFALSEORFALSEORTRUEShouldReturnTRUE() {
        let sample = "false or false or true"

        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), true)
    }
    
    func testGivenNOTTRUEANDFALSEORFALSEshouldReturnFalse() {
        let sample = "not true and false or false"

        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), false)
    }
    
    func testGivenParenthesisShouldProcessCorrectly() {
        let sample = "(TRUE OR TRUE OR TRUE) AND FALSE"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), false)
    }
    
    func testGivenMoreParenthesisShouldProcessCorrectly() {
        let sample = "(TRUE OR TRUE) OR (TRUE AND FALSE)"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), true)
    }
    
    func testGivenNotBeforeParenthesisShouldProcessCorrectly() {
        let sample = "NOT (TRUE OR TRUE) OR (TRUE AND FALSE)"
        
        XCTAssertEqual(BooleanCalculator.getEvaluation(of: sample), false)
    }
}
